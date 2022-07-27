module API
  module Comments
    class Index < Grape::API

      get do
        present Comment.all, with: Entities::CommentEntity
      end
    end
  end
end

