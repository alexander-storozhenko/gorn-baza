require 'api/entities/comment_entity'
module API
  module Comments
    class Post < Grape::API

      params do
        requires :name, type: String
        requires :text, type: String
        requires :captcha, type: String
        requires :captcha_id, type: Integer
      end

      post do
        content_type 'multipart/form-data'
        captcha = Captcha.find(params[:captcha_id])

        raise 'Invalid captcha' unless captcha.valid_content?(params[:captcha])

        params[:images]&.map! { |i| ActionDispatch::Http::UploadedFile.new(i) }

        comment = Comment.create!(params.except(:captcha, :captcha_id))

        present comment, with: Entities::CommentEntity
      end
    end
  end
end

