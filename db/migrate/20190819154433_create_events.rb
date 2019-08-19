class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :sport
      t.datetime :start_at
      t.integer :duration
      t.integer :level
      t.integer :capacity
      t.boolean :available
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
