require_relative 'houses/root'

module API
  class Root < Grape::API
    format :json

    namespace 'api' do
      mount Houses::Root
    end
  end
end