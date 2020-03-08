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

User.all.each do |user|
  2.times do |t|
    purchase = Purchase.create(user: user, video: Video.all.sample, quality: Purchase.qualities.keys.sample)
  end
end

half_purchases = (Purchase.count / 2)

Purchase.all.sample(half_purchases).each do |purchase|
  purchase.update(expires_at: Faker::Date.between(from: 5.days.ago, to: 2.days.ago))
end
