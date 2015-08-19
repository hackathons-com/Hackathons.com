require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has secure password' do
    have_secure_password
  end
  it 'validates presences of email' do
    validate_presence_of :email
  end
  it 'validates presences of password' do
    validate_presence_of :password
  end
  it 'validates presences of password confirmation' do
    validate_presence_of :password_confirmation
  end
  it 'validates the uniqueness of email' do
    validate_uniqueness_of :email
  end
  it 'has many blog posts' do
    have_many :posts
  end
end
