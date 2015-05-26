class AddUserToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :user, :string
  end
end
