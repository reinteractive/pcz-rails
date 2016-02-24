json.array!(@players) do |player|
  json.extract! player, :id, :fideid, :name, :rating, :k, :rapid, :blitz, :birthday
  json.url player_url(player, format: :json)
end
