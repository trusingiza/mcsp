class CreateSiscomReports < ActiveRecord::Migration
  def change
    create_table :siscom_reports do |t|
      t.date :Periode
      t.integer :Diarrhea2_59months
      t.integer :Pneumonia2_59months
      t.integer :Accouchement_domicile
      t.integer :Micropostal
      t.integer :Active_CHWs
      t.integer :Total_CHWs
      t.integer :Total_red_alert
      t.integer :Responce_red_alert
      t.integer :RDT_positive
      t.integer :RDT_negative
      t.integer :Malaria_6_59months_treated_before_24h
      t.integer :Malaria_6_59months_treated_after_24h
      t.references :facility, index: true
      

      t.timestamps null: false
    end
    add_foreign_key :siscom_reports, :facilities
  end
end
