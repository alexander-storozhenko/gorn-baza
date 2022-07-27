require_relative 'index'
require_relative 'post'

module API
  module Comments
    class Root < Grape::API
      namespace 'comments' do
        mount Index
        mount Post
      end
    end
  end
end


