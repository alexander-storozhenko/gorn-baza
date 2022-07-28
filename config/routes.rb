require 'api/root'

Rails.application.routes.draw do
  devise_for :users
  default_url_options host: '127.0.0.1:3000'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount API::Root => '/'
end
