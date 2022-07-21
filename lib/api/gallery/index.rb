require 'api/entities/gallery_entity'
module API
  module Gallery
    class Index < Grape::API

      get do
        present Photo.all, with: Entities::GalleyEntity
      end
    end
  end
end
