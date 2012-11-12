require 'spec_helper'

describe "usergroups/edit" do
  before(:each) do
    @usergroup = assign(:usergroup, stub_model(Usergroup,
      :group_name => "MyString"
    ))
  end

  it "renders the edit usergroup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usergroups_path(@usergroup), :method => "post" do
      assert_select "input#usergroup_group_name", :name => "usergroup[group_name]"
    end
  end
end
