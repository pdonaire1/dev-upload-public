require 'rails_helper'

RSpec.describe WebApp, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'has a valid WebApp' do
  	web_app = FactoryGirl.create(:web_app)
  	expect(web_app).to be_valid
  end
  
end
