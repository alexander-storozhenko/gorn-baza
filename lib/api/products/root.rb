require_relative 'index'

module API
  module Products
    class Root < Grape::API
      namespace 'products' do
        mount Index
      end
    end
  end
end
