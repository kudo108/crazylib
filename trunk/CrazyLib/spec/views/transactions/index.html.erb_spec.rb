require 'spec_helper'

describe "transactions/index" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :book_id => "",
        :user_id => "",
        :day_return => "Day Return",
        :date => "Date",
        :status => ""
      ),
      stub_model(Transaction,
        :book_id => "",
        :user_id => "",
        :day_return => "Day Return",
        :date => "Date",
        :status => ""
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Day Return".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
