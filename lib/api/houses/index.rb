require 'api/entities/house_entity'
module API
  module Houses
    class Index < Grape::API

      get do
        present House.all, with: Entities::HouseEntity
      end
    end
  end
end