require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nickname => "MyString",
      :hased_password => "MyString",
      :email => "MyString",
      :group => ""
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_nickname", :name => "user[nickname]"
      assert_select "input#user_hased_password", :name => "user[hased_password]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_group", :name => "user[group]"
    end
  end
end
