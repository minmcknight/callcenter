class CreateResponderStatuses < ActiveRecord::Migration
  def change
    create_table :responder_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
