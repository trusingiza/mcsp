class CreateFamilyPlanningReports < ActiveRecord::Migration
  def change
    create_table :family_planning_reports do |t|
      t.date :report_period
      t.integer :delivery_1
      t.integer :delivery_2
      t.integer :neonantology_male
      t.integer :neonantology_female
      t.integer :anc_oral_contraceptive
      t.integer :anc_injectable
      t.integer :anc_implants
      t.integer :anc_iud
      t.integer :anc_male_condom
      t.integer :anc_female_condom
      t.integer :anc_barriers
      t.integer :anc_cycle_beads
      t.integer :anc_auto_observation
      t.integer :anc_tubal_ligation
      t.integer :anc_vasectomy
      t.integer :acceptors_1
      t.integer :acceptors_2
      t.integer :acceptors_oral_contraceptive
      t.integer :acceptors_injectable
      t.integer :acceptors_implants
      t.integer :acceptors_iud
      t.integer :acceptors_male_condom
      t.integer :acceptors_female_codom

      t.integer :acceptors_other_barriers
      t.integer :acceptors_cycle_beads
      t.integer :acceptors_auto_observation
      t.integer :acceptors_tubal_ligation
      t.integer :acceptors_vasectomy
      t.references :facility, index: true

      t.timestamps null: false
    end
      add_foreign_key :family_planning_reports, :facilities
  end
end
