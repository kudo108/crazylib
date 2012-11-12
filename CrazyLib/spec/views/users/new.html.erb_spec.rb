require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :nickname => "MyString",
      :hased_password => "MyString",
      :email => "MyString",
      :group => ""
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_nickname", :name => "user[nickname]"
      assert_select "input#user_hased_password", :name => "user[hased_password]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_group", :name => "user[group]"
    end
  end
end
