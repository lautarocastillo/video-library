json.cache! ['video', video], expires_in: 1.hour do
  json.id video.id
  json.title video.title
  json.plot video.plot
  json.type video.type
  json.created_at video.created_at
  if video.type == "Season"
    json.number video.number
    json.episodes video.episodes, partial: 'api/library/episode', as: :episode
  end
end
