class AddTemplateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :photo, :string
    add_column :users, :favorite_sports, :string, array: true, default: []
  end
end
