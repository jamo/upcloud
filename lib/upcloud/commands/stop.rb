module Upcloud
  module Command

    require 'optparse'
    class Stop < BaseCommand

      def parameters
        {uuid: @uuid, timeout: @timeout, stop_type: "soft"}
      end

      def end_url

        "/server/#{@uuid}/stop"
      end

      def do_it(args)
        options = {}
        OptionParser.new do |opts|
          opts.banner = "Usage: upcloud stop [options]"
          opts.on("-u", "--uuid uuid", "Servers UUID") do |v|
            @uuid = v
          end
          opts.on("-t", "--timeout timeout", "Timeout") do |v|
            raise "Timeout should be between 0..600" unless (0..600).cover? v.to_i
            @timeout = v
          end
          opts.on("-s", "--stop-type type", "Stop type, (soft|hard)") do |v|
            raise "Type should be soft or hard" unless %w(soft hard).include? v
            @timeout = v
          end
          opts.on_tail("-h", "--help", "Show this message") do
            puts opts
            exit
          end
        end.parse!(args)
        p OPTIONS: options

        puts "Stopping #{@uuid}"
        format post(end_url, parameters)
      end

    end

  end
end

