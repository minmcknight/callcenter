class CreateCallStatuses < ActiveRecord::Migration
  def change
    create_table :call_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
