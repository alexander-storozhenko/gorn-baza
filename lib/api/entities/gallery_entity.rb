module API
  module Entities
    class GalleyEntity < Grape::Entity

      expose :name
      expose :author
      expose :date
      expose :image_url
    end
  end
end

