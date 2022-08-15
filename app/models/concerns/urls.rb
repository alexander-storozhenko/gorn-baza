
module Urls
  extend ActiveSupport::Concern
  include Rails.application.routes.url_helpers

  def attachment_url(blob)
    "#{ENV['API_HOST'] || 'http://localhost:3000'}#{rails_blob_path(blob)}"
  end
end