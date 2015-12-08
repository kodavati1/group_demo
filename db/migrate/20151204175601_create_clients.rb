class CreateClients < ActiveRecord::Migration

  def change
    create_table :clients do |t|
      t.string :name
      t.string :status
      t.boolean :is_active
      t.integer :salire
    end
  end
end
