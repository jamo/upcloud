require "upcloud/base_command"
require "upcloud/my_config"
require "upcloud/results_formatter"
require "upcloud/version"
require 'ostruct'

module Upcloud

  class Upcloud

    def initialize

      Dir.glob('lib/upcloud/commands/*.rb').each do |command|
        register(command)
      end
    end

    def register(command)

      require command.gsub("lib/", "")
    end

    def do_it(args)

      const = ::Upcloud::Command.constants
      command = args.shift.to_sym
      p COM: command
      p CONST: const
      cmd = const.find { |c| c.downcase == command }
      if cmd
        real_command = ::Upcloud::Command.const_get cmd
        real_command.new.do_it(args)
      else
        puts "Cannot find command: #{command} with parameters #{args.join(", ")}"
        exit 1
      end
    end
  end
end
