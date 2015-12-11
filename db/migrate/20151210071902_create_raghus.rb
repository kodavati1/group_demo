class CreateRaghus < ActiveRecord::Migration
  def change
    create_table :raghus do |t|
      t.string :name
      t.string :status

      t.timestamps null: false
    end
  end
end
