RSpec.describe Movie, type: :model do
  let!(:movie) { FactoryBot.create(:movie) }

  it "creates type movie" do
    expect(movie.type).to eq("Movie")
  end
end
