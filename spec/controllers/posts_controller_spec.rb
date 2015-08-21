require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  render_views
  login_user
  
  let(:valid_attributes) {
    Post.create(id: 35, name: "Finding the best",
    content: "...in search for a better world!")
  }
  let(:valid_session) { {} }
  # before(:each) do
  #   user = FactoryGirl.create(:user)
  # end
  describe "GET #index" do
    let(:post) { FactoryGirl.create(:post) }
    
    it 'gets the index action' do
      get :index
      expect(response).to render_template(:index)
    end
    
    it 'assigns @posts' do
      get :index
      expect(assigns(:post))
    end
  end
  
  describe "GET #new" do
  before(:each) do
    user = User.new(email: "rodrigo@hackathons.com", password: "startoneapp", password_confirmation: "startoneapp", role: "admin")
  end
    it 'renders the new action' do
      get :new
      expect(response).to render_template(:new)
    end
  end
  
  # describe "POST #create" do
  #   context "with valid params" do
  #     it 'saves Post' do
  #       expect { 
  #         post :create, {:post => valid_attributes}
  #       }.to change(Post, :count).by(1)
  #     end
  #   end
  # end
end
