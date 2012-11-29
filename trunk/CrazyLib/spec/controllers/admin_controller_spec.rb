require 'spec_helper'

describe AdminController do

  describe "GET 'show_transactions'" do
    it "returns http success" do
      get 'show_transactions'
      response.should be_success
    end
  end

end
