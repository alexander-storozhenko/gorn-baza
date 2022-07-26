require_relative 'index'
require_relative 'get'

module API
  module Houses
    class Root < Grape::API
      namespace 'houses' do
        mount Index
        mount Get
      end
    end
  end
end
