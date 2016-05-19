class CreateMopddReports < ActiveRecord::Migration
  def change
    create_table :mopdd_reports do |t|
      t.date :periode
      t.integer :malaria_confirmed
      t.integer :malaria_confirmed_notified
      t.integer :malaria_index_investigated
      t.references :facility, index: true

      t.timestamps null: false
    end
    add_foreign_key :mopdd_reports, :facilities
  end
end
