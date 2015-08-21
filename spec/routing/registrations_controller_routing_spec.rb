require 'rails_helper'

RSpec.describe Devise::RegistrationsController, :type => :controller do
  it 'should route to new registration' do
    expect(:get => "/users/sign_up").to route_to("devise/registrations#new")
  end
  
  it 'should route to cancel user registation' do
    expect(:get => "/users/cancel").to route_to("devise/registrations#cancel")
  end
  
  context "edit user registration action" do
    it 'should route to #GET' do
      expect(:get => '/users/edit').to route_to("devise/registrations#edit")
    end
    
    it 'should route to #PATCH' do
      expect(:patch => '/users').to route_to("devise/registrations#update")
    end
    
    it 'should route to #PUT' do
      expect(:put => '/users').to route_to("devise/registrations#update")
    end
    
    it 'should route to #DELETE' do
      expect(:delete => '/users/').to route_to("devise/registrations#destroy")
    end
  end
end