class AddDobToPatients < ActiveRecord::Migration[8.0]
  def change
    add_column :patients, :dob, :date
  end
end
