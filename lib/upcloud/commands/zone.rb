module Upcloud
  module Command

    class Zone < BaseCommand

      def parameters

        {}
      end

      def end_url

        "/zone"
      end

      def do_it(args)

        format get(end_url, parameters)
      end

    end
  end
end
