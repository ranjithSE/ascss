class AddNewFieldsToSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :batch, :string
  end
end
