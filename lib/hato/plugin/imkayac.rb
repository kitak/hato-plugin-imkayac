require "hato/plugin/imkayac/version"
require 'hato/plugin'

require "im-kayac"

module Hato
  module Plugin
    class Imkayac < Base
      def notify(args)
        im_kayac = ImKayac.to(config.username)
        [:password, :secret, :handler].each do |_|
          im_kayac.send(_, config.send(_)) if config.send(_)
        end
        im_kayac.post(args[:message])
      end
    end
  end
end
