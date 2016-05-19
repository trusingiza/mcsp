class CreateGenderReports < ActiveRecord::Migration
  def change
    create_table :gender_reports do |t|
      t.date :meeting_date
      t.string :meeting_venue
      t.integer :hf_targeted
      t.integer :hf_participated
      t.integer :admin_sector_targeted
      t.integer :admin_sector_participated
      t.integer :admin_cell_targeted
      t.integer :admin_cell_participated
      t.integer :male_10_14
      t.integer :female_10_14
      t.integer :male_15_19
      t.integer :female_15_19
      t.integer :male_20_24
      t.integer :female_20_24
      t.integer :male_25_29
      t.integer :female_25_29
      t.integer :male_30_49
      t.integer :female_30_49
      t.integer :male_50_above
      t.integer :female_50_above
      t.references :district, index: true

      t.timestamps null: false
    end
    add_foreign_key :gender_reports, :districts
  end
end
