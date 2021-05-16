class AddEmailAndPasswordHashToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password_hash, :string
    add_column :users, :email, :string
  end
end
