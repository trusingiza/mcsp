class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :fosa_code
      t.string :facility_name
      t.references :district, index: true

      t.timestamps null: false
    end
    add_foreign_key :facilities, :districts
  end
end
