class WebApp < ApplicationRecord
  belongs_to :user
  has_many :web_app_key, :dependent => :delete_all
  validates :page, uniqueness: true
  
  def test_api_key
    web_app_key = WebAppKey.where(:test => true, :web_app_id => self.id).first
    web_app_key.api_key
  end

  def api_key
    web_app_key = WebAppKey.where(:test => false, :web_app_id => self.id).first
    web_app_key.api_key
  end

  def create_keys
    WebAppKey.create(
      :test => true,
      :web_app => self)
    WebAppKey.create(
      :test => false,
      :web_app => self)
  end

  private
end
