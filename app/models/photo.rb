class Photo < ApplicationRecord
  include Urls
  has_one_attached :image

  def image_url
    attachment_url(image)
  end
end
