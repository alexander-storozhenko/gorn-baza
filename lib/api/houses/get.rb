require 'api/entities/house_entity'
module API
  module Houses
    class Get < Grape::API

      params do
        requires :id, type: Integer
      end

      get ':id' do
        present House.find(params[:id]), with: Entities::HouseEntity
      end
    end
  end
end
