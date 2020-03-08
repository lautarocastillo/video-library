RSpec.describe "Libraries", type: :request do
  let!(:movie) { FactoryBot.create(:movie) }
  let!(:season) { FactoryBot.create(:season) }
  let!(:episode) { FactoryBot.create(:episode, video: season) }

  it "gets all library" do
    get '/api/library/index'
    expect(response.body).to match(movie.plot)
    expect(response.body).to match(season.title)
  end

  it "gets movies only" do
    get '/api/library/movies'
    expect(response.body).to match(movie.plot)
    expect(response.body).not_to match(season.title)
  end

  context "seasons" do
    it "gets seasons only" do
      get '/api/library/seasons'
      expect(response.body).to match(season.plot)
      expect(response.body).not_to match(movie.title)
    end

    it "lists episodes too" do
      get '/api/library/seasons'
      expect(response.body).to match(episode.plot)
    end
  end
end
