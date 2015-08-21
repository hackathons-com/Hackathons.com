require "rails_helper"

RSpec.describe Devise::PasswordsController, :type => :controller do
  it 'should route to #new' do
    expect(:get => "/users/password/new").to route_to("devise/passwords#new")
  end
  
  it 'should route to #create' do
    expect(:post => "/users/password").to route_to("devise/passwords#create")
  end
  
  context "Edit password action" do
    it 'should route to #GET' do
      expect(:get => "/users/password/edit").to route_to("devise/passwords#edit")
    end
    
    it 'should route to #PATCH' do
      expect(:patch => '/users/password').to route_to("devise/passwords#update")
    end
    
    it 'should route to #PUT' do
      expect(:put => '/users/password').to route_to("devise/passwords#update")
    end
  end
end