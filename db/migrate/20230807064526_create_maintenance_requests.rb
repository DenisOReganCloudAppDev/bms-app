class CreateMaintenanceRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenance_requests do |t|
      t.references :tenant, null: false, foreign_key: true
      t.text :requestinfo
      t.date :requestDate
      t.boolean :completed
      t.text :comment

      t.timestamps
    end
  end
end
