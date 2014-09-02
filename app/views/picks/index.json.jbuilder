json.array!(@picks) do |pick|
  json.extract! pick, :id, :selection, :week, :user_id, :game_id, :winner
  json.url pick_url(pick, format: :json)
end
