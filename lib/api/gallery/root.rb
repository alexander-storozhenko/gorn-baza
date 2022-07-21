require_relative 'index'

module API
  module Gallery
    class Root < Grape::API
      namespace 'gallery' do
        mount Index
      end
    end
  end
end

