require_relative 'index'

module API
  module News
    class Root < Grape::API
      namespace 'news' do
        mount Index
      end
    end
  end
end

