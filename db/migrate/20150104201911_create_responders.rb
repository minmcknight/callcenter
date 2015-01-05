class CreateResponders < ActiveRecord::Migration
  def change
    create_table :responders do |t|
      t.string :name
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
