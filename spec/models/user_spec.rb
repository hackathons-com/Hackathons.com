require 'rails_helper'

RSpec.describe User, type: :model do
 it { have_secure_password }
 it { validate_presence_of :email }
 it { validate_presence_of :password }
 it { validate_presence_of :password_confirmation }
 it { validate_uniqueness_of :email }
end
