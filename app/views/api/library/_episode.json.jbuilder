json.cache! ['episode', episode], expires_in: 1.hour do
  json.extract! episode, :id, :title, :plot, :number
end
