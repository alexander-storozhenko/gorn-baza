class Comment < ApplicationRecord
  include Urls
  has_many_attached :images

  def image_urls
    images.map do |i|
      attachment_url(i)
    end
  end
end