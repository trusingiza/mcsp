class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :location
      t.string :organizer
      t.date :startdate
      t.date :enddate
      t.string :name_surname
      t.string :gender
      t.string :provenance_district
      t.string :place_of_work
      t.string :position
      t.string :qualification
      t.string :telephone
      t.string :email
      t.integer :duration_days
      t.string :type_name_of_training
      t.float :pre_test
      t.float :post_test
      t.date :date_of_post_training_follow_up
      t.string :technical_area

      t.timestamps null: false
    end
  end
end
