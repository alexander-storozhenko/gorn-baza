require 'api/entities/product_entity'
module API
  module Products
    class Index < Grape::API

      get do
        present(
          Product.product_types.keys.map do |key|
            { key =>
                Product.where(product_type: key.to_sym)
                       .map { |e| e.attributes.except('created_at', 'updated_at').merge({image_url: e.image_url}) } }
          end
        )
      end
    end
  end
end