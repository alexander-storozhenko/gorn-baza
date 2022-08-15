class Captcha < ApplicationRecord
  include Urls
  has_one_attached :image

  def valid_content?(text)
    content == text
  end

  def image_url
    attachment_url(image)
  end
end
