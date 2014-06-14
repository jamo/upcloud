module Upcloud
  module Command

    require 'optparse'
    class Restart < BaseCommand


      def initialize
        @timeout        = 60
        @stop_type      = 'soft'
        @timeout_action = 'destroy'
      end

      def parameters
        {
          uuid:           @uuid,
          timeout:        @timeout,
          stop_type:      @stop_type,
          timeout_action: @timeout_action
        }
      end

      def end_url

        "/server/#{@uuid}/restart"
      end

      def do_it(args)
        options = {}
        OptionParser.new do |opts|
          opts.banner = "Usage: upcloud restart [options]"
          opts.on("-u", "--uuid uuid", "Servers UUID") do |v|
            @uuid = v
          end
          opts.on("-t", "--timeout timeout", "Timeout") do |v|
            raise "Timeout should be between 0..600" unless (0..600).cover? v.to_i
            @timeout = v
          end
          opts.on("-s", "--stop-type type", "Stop type, (soft|hard)") do |v|
            raise "Type should be soft or hard" unless %w(soft hard).include? v
            @stop_type = v
          end
          opts.on("-a", "--timeout-action action", "Timeout action, (destroy|ignore)") do |v|
            raise "Type should be soft or hard" unless %w(destroy ignore).include? v
            @timeout_action = v
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

