require_relative 'houses/root'
require_relative 'gallery/root'
require_relative 'products/root'
require_relative 'news/root'
require_relative 'comments/root'
require_relative 'captchas/root'

module API
  class Root < Grape::API
    format :json

    namespace 'api' do
      mount Houses::Root
      mount Gallery::Root
      mount Products::Root
      mount News::Root
      mount Comments::Root
      mount Captchas::Root
    end
  end
end