class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.integer :priority_id
      t.integer :type_id
      t.integer :responder_id
      t.string :address
      t.string :phone_number
      t.text :summary
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
