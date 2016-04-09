class AddPasswordDigestToUsers < ActiveRecord::Migration
  def up
    add_column :users, :password_digest, :string
    remove_column :users, :password
  end

  def down
    remove_column :users, :password_digest, :string
    add_column :users, :password, :string
  end
end
