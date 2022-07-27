class Comment < ApplicationRecord
  has_many_attached :images

  def image_urls
    images.map do |i|
      Rails.application.routes.url_helpers.url_for(i)
    end
  end
end