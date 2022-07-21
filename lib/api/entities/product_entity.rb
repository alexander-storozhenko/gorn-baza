module API
  module Entities
    class ProductEntity < Grape::Entity
      expose :name
      expose :product_type
      expose :price
      expose :image_url
    end
  end
end

