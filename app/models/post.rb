class Post < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates_length_of :name, minimum: 5
  validates_length_of :content, minimum: 10
end
