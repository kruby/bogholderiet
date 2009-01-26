class AddDefaultUser < ActiveRecord::Migration
  def self.up
    if !User.find_by_login('thomas')
      User.create(:login => 'thomas', :email => 'ts@korsgaard-freelance.dk',
      :password => 'kf1737', :password_confirmation => 'kf1737', :category => 'Admin', :blogname => 'TKS')
    end
  end

  def self.down
  end
end