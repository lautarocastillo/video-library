json.id video.id
json.title video.title
json.plot video.plot
json.type video.type
json.created_at video.created_at
if video.type == "Season"
  json.number video.number
  json.episodes video.episodes, partial: 'episode', as: :episode
end
