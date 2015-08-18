class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, :default => 'none'

    User.create! do |u|
    	u.email = "admin@example.com"
    	u.password = "startadmin"
    	u.role = 'admin'
    end
  end
end
