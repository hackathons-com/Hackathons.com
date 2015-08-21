module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = sign_in FactoryGirl.create(:user)
      sign_in(:user, @user)
    end
  end
end