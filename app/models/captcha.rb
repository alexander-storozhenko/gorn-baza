class Captcha < ApplicationRecord
  has_one_attached :image

  def valid_content?(text)
    content == text
  end

  def image_url
    Rails.application.routes.url_helpers.url_for(image)
  end
end
