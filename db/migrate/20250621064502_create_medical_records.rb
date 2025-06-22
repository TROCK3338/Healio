class CreateMedicalRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :medical_records do |t|
      t.references :patient, null: false, foreign_key: true
      t.text :notes
      t.references :created_by, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
