class AddNewFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :integer
    add_column :users, :email, :string
    add_index :users, :email, unique: true
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
