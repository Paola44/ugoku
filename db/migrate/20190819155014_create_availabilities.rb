class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.string :day_name
      t.boolean :slot_1, default: false
      t.boolean :slot_2, default: false
      t.boolean :slot_3, default: false
      t.boolean :slot_4, default: false
      t.boolean :slot_5, default: false
      t.boolean :slot_6, default: false

      t.timestamps
    end
  end
end
