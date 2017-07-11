class AddBioToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bio, :string
  end
  User.create! do |u|
      u.email     = 'usertest@test.com'
      u.password    = 'password'
      u.username = "Test User"
  end
  User.create! do |u|
      u.email     = 'sellertest@test.com'
      u.password    = 'password'
      u.seller_role = true
      u.username = "Test Seller"
  end
  User.create! do |u|
      u.email     = 'test@test.com'
      u.password    = 'password'
      u.admin_role = true
  end
end
