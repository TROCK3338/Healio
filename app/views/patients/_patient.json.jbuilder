json.extract! patient, :id, :name, :age, :gender, :contact, :address, :created_at, :updated_at
json.url patient_url(patient, format: :json)
