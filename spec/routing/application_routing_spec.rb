require 'rails_helper'

RSpec.describe ApplicationController, :type => :controller do
  # it 'gets the root route' do
  #     expect(:get => '/').to route_to(:controller => 'application')
  # end
  it 'get the /about route' do
      expect(:get => '/about').to route_to('application#about')
  end
end