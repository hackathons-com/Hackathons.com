require 'rails_helper'

RSpec.describe Post, type: :model do
  it { belong_to :user }
  it { validate_length_of :name }
  it { validate_length_of :content }
  it { validate_presence_of :name }
end
