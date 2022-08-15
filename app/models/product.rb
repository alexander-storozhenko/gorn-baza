class Product < ApplicationRecord
  include Urls
  has_one_attached :image

  enum product_type: %i[menu product]

  def image_url
    return unless image.attached?

    attachment_url(image)
  end
end

