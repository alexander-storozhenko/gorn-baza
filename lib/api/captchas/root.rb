require_relative 'get'

module API
  module Captchas
    class Root < Grape::API
      namespace 'captcha' do
        mount Get
      end
    end
  end
end



