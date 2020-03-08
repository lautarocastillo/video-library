require 'faker'

5.times do |t|
  User.create(email: Faker::Internet.email)
  Video.create(title: Faker::Game.title, plot: Faker::Food.description, video_type: (t % 2 == 0) ? :season : :movie )
end

Video.season.each do |season|
  episodes = Faker::Number.number(digits: 1)

  episodes.times do |ep|
    Episode.create(season: season, title: Faker::Movies::StarWars.character, plot: Faker::Movies::StarWars.wookiee_sentence, number: ep + 1)
  end
end
