# frozen_string_literal: true

require "daemons"
require "logger"
require "thor"
require_relative "services/version"

module DSpace
module Services
  class EmbargoJob
    def self.perform_now
      logger.info("Checking the embargo status of the Collection...")
    end

    def logger
      @logger ||= Logger.new(STDOUT)
    end
  end

  class CLI < Thor
    attr_reader :embargo_process

    desc "start", "start the embargo service"
    def start
      @embargo_process = Daemons.call do
        EmbargoJob.perform_now
      end
    end

    desc "stop", "stop the embargo service"
    def stop
      if embargo_process.nil?
        logger.error("No embargo service was found to be running")
        return
      end

      embargo_process.stop
    end

    no_commands do
      def logger
        @logger ||= Logger.new(STDOUT)
      end
    end
  end
end
end
