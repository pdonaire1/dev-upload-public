module WebAppsHelper
  def api_key(web_app, blank_message="&nbsp;")
    web_app_key = WebAppKey.where(:test => false, :web_app_id => web_app.id).first
    web_app_key.api_key
  end
  def test_api_key(web_app, blank_message="&nbsp;")
    web_app_key = WebAppKey.where(:test => true, :web_app_id => web_app.id).first
    web_app_key.api_key
  end
end
