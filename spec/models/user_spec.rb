require 'rails_helper'
require 'spec_helper'
require 'rspec/core'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "will create users" do
    lindeman = User.create!(
      first_name: "Andy", last_name: "Lindeman", username: "linder_andy",
      password: "123123", email: "andy@example.com")
    chelimsky = User.create!(first_name: "David", last_name: "Chelimsky",
      username: "david_chel", password: "123123", email: "hello@example.com")
    expect(lindeman).to be_valid
    expect(chelimsky).to be_valid
  end
  it "is a invlaid users" do
    lindeman = User.new(
      username: "linder_andy",
      password: "123123")
    chelimsky = User.new(password: "123123", email: "hello@example.com")
    cherman = User.new(password: "123123", email: "hello@example.com", username: "che")
    expect(lindeman).to be_invalid
    expect(chelimsky).to be_invalid
    # cherman.should include(I18n.t("validations.user.username_short"))
    cherman.should be_invalid
  end
  it "has a valid factory" do
    user = FactoryGirl.create(:user)
    expect(user).to be_valid
  end
  it "should have required fields" do
    lambda{User.create! :email=>"hello@helo.com", :password => "123456", 
      :username => nil}.should raise_error
  end
end
