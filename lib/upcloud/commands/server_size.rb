module Upcloud
  module Command

    class ServerSize < BaseCommand

      def parameters

        {}
      end

      def end_url

        "/server_size"
      end

      def do_it(args)

        format get(end_url, parameters)
      end

    end
  end
end
