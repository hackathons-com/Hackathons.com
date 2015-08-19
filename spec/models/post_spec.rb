require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'belongs to a user' do
    belong_to :user
  end
  it 'validates the length of the title' do
    validate_length_of :name
  end
  it 'validates the length of the content' do
    validate_length_of :content
  end
  it 'validates the presence of the title' do
    validate_presence_of :name
  end
end
