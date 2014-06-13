module Upcloud
  module Command

    require 'optparse'
    class Server < BaseCommand

      def parameters
        {uuid: @uuid}
      end

      def end_url

        "/server/#{@uuid}"
      end

      def do_it(args)
        options = {}
        OptionParser.new do |opts|
          opts.banner = "Usage: upcloud server [options]"
          opts.on("-u", "--uuid uuid", "Servers UUID") do |v|
            @uuid = v
          end
          opts.on_tail("-h", "--help", "Show this message") do
            puts opts
            exit
          end
        end.parse!(args)
        p OPTIONS: options

        puts "Starting #{@uuid}"
        format get(end_url, parameters)
      end

    end

  end
end

