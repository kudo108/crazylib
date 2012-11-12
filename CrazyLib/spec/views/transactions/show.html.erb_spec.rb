require 'spec_helper'

describe "transactions/show" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :book_id => "",
      :user_id => "",
      :day_return => "Day Return",
      :date => "Date",
      :status => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Day Return/)
    rendered.should match(/Date/)
    rendered.should match(//)
  end
end
