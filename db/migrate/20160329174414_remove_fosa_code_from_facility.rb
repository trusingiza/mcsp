class RemoveFosaCodeFromFacility < ActiveRecord::Migration
  def change
    remove_column :facilities, :fosa_code, :string
  end
end
