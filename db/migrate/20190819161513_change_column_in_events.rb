class ChangeColumnInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :available, :boolean, default: true
  end
end
