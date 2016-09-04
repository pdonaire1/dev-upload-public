class WebAppKey < ApplicationRecord
  belongs_to :web_app
  has_many :web_app_file, :dependent => :delete_all
  before_create :create_api_key

  private
  def create_api_key
  	api_key = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless WebAppKey.exists?(:api_key => api_key)
    end
  	self.api_key = api_key
  end
end
