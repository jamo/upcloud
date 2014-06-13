
module Upcloud
  module Command

    class Account < BaseCommand

      def parameters
        {}
      end

      def end_url

        "/account/"
      end

      def do_it(args)

        format get(end_url, parameters)
      end

    end

  end
end

