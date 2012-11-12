require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nickname => "Nickname",
      :hased_password => "Hased Password",
      :email => "Email",
      :group => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname/)
    rendered.should match(/Hased Password/)
    rendered.should match(/Email/)
    rendered.should match(//)
  end
end
