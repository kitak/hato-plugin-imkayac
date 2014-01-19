require "hato/plugin/imkayac/version"
require 'hato/plugin'

require "im-kayac"

module Hato
  module Plugin
    class ImKayac < Base
      def notify(args)
        args[:to] = args[:username]
        args[:post] = args[:message]
        [:to, :password, :secret, :handler, :post].inject(ImKayac) do |im_kayac, key|
          args.has_key?(key) ? im_kayac.send(key, args[key]) : im_kayac
        end
      end
    end
  end
end
