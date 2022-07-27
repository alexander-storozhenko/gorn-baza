require 'api/entities/captcha_entity'
module API
  module Captchas
    class Get < Grape::API

      get do
        present Captcha.order('RANDOM()').first, with: Entities::CaptchaEntity
      end
    end
  end
end


