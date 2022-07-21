require_relative 'houses/root'
require_relative 'gallery/root'
require_relative 'products/root'
require_relative 'news/root'

module API
  class Root < Grape::API
    format :json

    namespace 'api' do
      mount Houses::Root
      mount Gallery::Root
      mount Products::Root
      mount News::Root
    end
  end
end