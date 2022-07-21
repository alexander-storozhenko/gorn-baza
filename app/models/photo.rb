class Photo < ApplicationRecord
  has_one_attached :image

  def image_url
    Rails.application.routes.url_helpers.url_for(image)
  end
end
