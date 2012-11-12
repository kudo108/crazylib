require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :title => "MyString",
      :author => "MyString",
      :publisher => "MyString",
      :total_page => "",
      :topic => "MyString",
      :brief_content => "MyText",
      :type => ""
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path, :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_author", :name => "book[author]"
      assert_select "input#book_publisher", :name => "book[publisher]"
      assert_select "input#book_total_page", :name => "book[total_page]"
      assert_select "input#book_topic", :name => "book[topic]"
      assert_select "textarea#book_brief_content", :name => "book[brief_content]"
      assert_select "input#book_type", :name => "book[type]"
    end
  end
end
