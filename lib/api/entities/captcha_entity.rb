module API
  module Entities
    class CaptchaEntity < Grape::Entity
      expose :image_url
      expose :id
    end
  end
end



