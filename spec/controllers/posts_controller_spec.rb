require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before (:each) do
    @user = FactoryGirl.create(:user)
  end
  describe "GET #index" do
    it 'gets the index page' do
      get :index
      expect(response).to have_http_status 200
    end
  end
end
