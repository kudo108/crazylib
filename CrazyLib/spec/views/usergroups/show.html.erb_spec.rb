require 'spec_helper'

describe "usergroups/show" do
  before(:each) do
    @usergroup = assign(:usergroup, stub_model(Usergroup,
      :group_name => "Group Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Group Name/)
  end
end
