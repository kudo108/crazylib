require 'spec_helper'

describe "usergroups/index" do
  before(:each) do
    assign(:usergroups, [
      stub_model(Usergroup,
        :group_name => "Group Name"
      ),
      stub_model(Usergroup,
        :group_name => "Group Name"
      )
    ])
  end

  it "renders a list of usergroups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Group Name".to_s, :count => 2
  end
end
