class House < ApplicationRecord
  include Urls
  has_many_attached :images
  has_one_attached :avatar

  def image_url(id)
    attachment_url(images[id])
  end

  def avatar_url
    return unless avatar.attached?

    attachment_url(avatar)
  end

  def image_urls
    images.map do |i|
      attachment_url(i)
    end
  end
end