RSpec.describe "Users", type: :request do
  let!(:user) { FactoryBot.create(:user) }
  let!(:purchase) { FactoryBot.create(:purchase, user: user ) }
  let!(:season) { FactoryBot.create(:season) }
  let!(:episode) { FactoryBot.create(:episode, video: season) }

  it "gets user library" do
    get '/api/user/library'
    expect(response.body).to match(purchase.video.title)
    expect(response.body).not_to match(episode.title)
  end

  context "purchase" do
    it "creates with valid video" do
      post '/api/user/purchase', params: { purchase: { video_id: season.id, quality: 'sd' }}
      expect(response.body).to match("You can enjoy your new content now!")
    end

    it "gets error if user has it" do
      post '/api/user/purchase', params: { purchase: { video_id: purchase.video.id, quality: 'sd' }}
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
