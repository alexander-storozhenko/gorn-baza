class House < ApplicationRecord
  has_many_attached :images
  has_one_attached :avatar

  def image_url(id)
    Rails.application.routes.url_helpers.url_for(images[id])
  end

  def avatar_url
    return unless avatar.attached?

    Rails.application.routes.url_helpers.url_for(avatar)
  end

  def image_urls
    images.map do |i|
      Rails.application.routes.url_helpers.url_for(i)
    end
  end
end