json.array!(@games) do |game|
  json.extract! game, :id, :team1, :team2, :spread, :week
  json.url game_url(game, format: :json)
end
