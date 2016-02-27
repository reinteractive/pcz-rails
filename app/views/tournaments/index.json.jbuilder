json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :venue, :registration_deadline, :more_information
  json.url tournament_url(tournament, format: :json)
end
