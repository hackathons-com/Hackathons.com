require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
  it 'should route to index action' do
    expect(:get => '/posts').to route_to("posts#index")
  end
  
  it 'should route to new action' do
    expect(:get => '/posts/new').to route_to("posts#new")
  end
  
  it 'should route to show action with ID' do
    expect(:get => '/posts/1').to route_to("posts#show", id: "1")
  end
  
  it 'should route to create action' do
    expect(:post => '/posts').to route_to("posts#create")
  end
end