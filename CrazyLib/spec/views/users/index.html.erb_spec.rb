require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :nickname => "Nickname",
        :hased_password => "Hased Password",
        :email => "Email",
        :group => ""
      ),
      stub_model(User,
        :nickname => "Nickname",
        :hased_password => "Hased Password",
        :email => "Email",
        :group => ""
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Hased Password".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
