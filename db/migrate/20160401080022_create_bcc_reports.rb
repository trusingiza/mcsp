class CreateBccReports < ActiveRecord::Migration
  def change
    create_table :bcc_reports do |t|
      t.date :sensitization_date
      t.string :Venue
      t.integer :male_fp_rh
      t.integer :female_fp_rh
      t.integer :male_mnh
      t.integer :female_mnh
      t.integer :male_malaria
      t.integer :female_malaria
      t.references :district, index: true

      t.timestamps null: false
    end
      add_foreign_key :bcc_reports, :districts
  end
end
