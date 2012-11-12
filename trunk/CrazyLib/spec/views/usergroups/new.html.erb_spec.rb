require 'spec_helper'

describe "usergroups/new" do
  before(:each) do
    assign(:usergroup, stub_model(Usergroup,
      :group_name => "MyString"
    ).as_new_record)
  end

  it "renders new usergroup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usergroups_path, :method => "post" do
      assert_select "input#usergroup_group_name", :name => "usergroup[group_name]"
    end
  end
end
