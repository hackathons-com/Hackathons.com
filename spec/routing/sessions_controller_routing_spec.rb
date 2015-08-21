require "rails_helper"

RSpec.describe Devise::SessionsController, :type => :controller do
  it 'should route to new user session' do
    expect(:get => '/users/sign_in').to route_to("devise/sessions#new")
  end
  
  it 'should route to create user session' do
    expect(:post => "/users/sign_in").to route_to("devise/sessions#create")
  end
  
  it 'should route to destroy user session' do
    expect(:delete => "/users/sign_out").to route_to("devise/sessions#destroy")
  end
end