class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.string :apartment_no
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
