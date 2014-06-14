module Upcloud
  module Command

    require 'optparse'
    class Modify < BaseCommand

      def parameters
        {
          core_number: @cores,
          memory_amount: @memory
        }
      end

      def end_url

        "/server/#{@uuid}"
      end

      def do_it(args)
        options = {}
        OptionParser.new do |opts|
          opts.banner = "Usage: upcloud stop [options]"
          opts.on("-u", "--uuid uuid", "Servers UUID") do |v|
            @uuid = v
          end
          opts.on("-c", "--cores cores", "Cores") do |v|
            @cores = v
          end
          opts.on("-m", "--memory memory", "Memory") do |v|
            @memory = v
          end
          opts.on_tail("-h", "--help", "Show this message") do
            puts opts
            exit
          end
        end.parse!(args)
        p OPTIONS: options

        puts "Stopping #{@uuid}"
        format put(end_url, parameters)
      end

    end

  end
end

