module API
  module Entities
    class NewEntity < Grape::Entity
      expose :title
      expose :caption
      expose :date
    end
  end
end


