class AddBuildingIdToTenants < ActiveRecord::Migration[7.0]
  def change
    add_column :tenants, :building_id, :integer
    add_index :tenants, :building_id
  end
end
