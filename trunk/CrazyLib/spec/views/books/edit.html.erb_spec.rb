require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :author => "MyString",
      :publisher => "MyString",
      :total_page => "",
      :topic => "MyString",
      :brief_content => "MyText",
      :type => ""
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path(@book), :method => "post" do
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
