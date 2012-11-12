require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :publisher => "Publisher",
        :total_page => "",
        :topic => "Topic",
        :brief_content => "MyText",
        :type => ""
      ),
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :publisher => "Publisher",
        :total_page => "",
        :topic => "Topic",
        :brief_content => "MyText",
        :type => ""
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
