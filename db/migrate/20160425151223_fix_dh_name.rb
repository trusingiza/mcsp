class FixDhName < ActiveRecord::Migration
  def change
    rename_column :district_hospitals, :name, :dh_name
  end
end
