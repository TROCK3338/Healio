class Patient < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments
  has_many :medical_records

  def to_partial_path
    "patients/card"
  end
end