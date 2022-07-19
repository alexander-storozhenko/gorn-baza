module API
  module Entities
    class HouseEntity < Grape::Entity
      root :houses, :house

      expose :name
      expose :caption
      expose :price
      expose :image_url
    end
  end
end
