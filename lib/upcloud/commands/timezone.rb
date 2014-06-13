module Upcloud
  module Command

    class Timezone < BaseCommand

      def parameters

        {}
      end

      def end_url

        "/timezone"
      end

      def do_it(args)

        format get(end_url, parameters)
      end

    end
  end
end
