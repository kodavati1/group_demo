class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :status
      t.boolean :is_active
      t.integer :salire
    end
  end
end
