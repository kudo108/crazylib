require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :author => "Author",
      :publisher => "Publisher",
      :total_page => "",
      :topic => "Topic",
      :brief_content => "MyText",
      :type => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/Publisher/)
    rendered.should match(//)
    rendered.should match(/Topic/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
