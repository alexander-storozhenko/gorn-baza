module API
  module Entities
    class HouseEntity < Grape::Entity
      root :houses, :house

      expose :id
      expose :name
      expose :caption
      expose :full_caption
      expose :price
      expose :image_urls
      expose :avatar_url
    end
  end
end
