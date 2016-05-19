class CreateDistrictHospitals < ActiveRecord::Migration
  def change
    create_table :district_hospitals do |t|
      t.string :name
      t.references :district, index: true
      t.timestamps null: false
    end
      add_foreign_key :district_hospitals, :districts
  end
end
