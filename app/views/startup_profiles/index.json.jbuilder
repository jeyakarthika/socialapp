json.array!(@startup_profiles) do |startup_profile|
  json.extract! startup_profile, :id, :name, :address, :suburb, :state, :postcode, :country
  json.url startup_profile_url(startup_profile, format: :json)
end
