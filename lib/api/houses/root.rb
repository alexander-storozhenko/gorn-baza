require_relative 'index'

module API
  module Houses
    class Root < Grape::API
      namespace 'houses' do
        mount Index
      end
    end
  end
end
