module API
  module Entities
    class CommentEntity < Grape::Entity
      expose :name
      expose :email
      expose :text
      expose :image_urls
    end
  end
end


