require 'spec_helper'

describe "transactions/edit" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :book_id => "",
      :user_id => "",
      :day_return => "MyString",
      :date => "MyString",
      :status => ""
    ))
  end

  it "renders the edit transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path(@transaction), :method => "post" do
      assert_select "input#transaction_book_id", :name => "transaction[book_id]"
      assert_select "input#transaction_user_id", :name => "transaction[user_id]"
      assert_select "input#transaction_day_return", :name => "transaction[day_return]"
      assert_select "input#transaction_date", :name => "transaction[date]"
      assert_select "input#transaction_status", :name => "transaction[status]"
    end
  end
end
