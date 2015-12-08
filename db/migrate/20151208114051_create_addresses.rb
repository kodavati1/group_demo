class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :status
      t.string :cardnumber
      t.timestamps
    end
  end
end
