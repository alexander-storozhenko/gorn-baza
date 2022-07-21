require 'api/entities/new_entity'
module API
  module News
    class Index < Grape::API

      get do
        present New.all.order(date: :desc), with: Entities::NewEntity
      end
    end
  end
end
