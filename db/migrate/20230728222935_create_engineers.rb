class CreateEngineers < ActiveRecord::Migration[7.0]
  def change
    create_table :engineers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
