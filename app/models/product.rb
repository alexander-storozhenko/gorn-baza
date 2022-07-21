class Product < ApplicationRecord
  has_one_attached :image

  enum product_type: %i[menu product]

  def image_url
    return unless image.attached?

    Rails.application.routes.url_helpers.url_for(image)
  end
end

