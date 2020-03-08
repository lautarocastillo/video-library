RSpec.describe Video, type: :model do
  let(:movie) { FactoryBot.create(:movie) }
  let(:season) { FactoryBot.create(:season) }

  it "should order by creation" do
    allow(season).to receive(:created_at).and_return(DateTime.now - 10.days)
    allow(movie).to receive(:created_at).and_return(DateTime.now + 10.days)

    videos = Video.all
    expect(videos.first.id).to be(movie.id)
    expect(videos.last.id).to be(season.id)
  end
end
