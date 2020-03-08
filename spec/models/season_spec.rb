RSpec.describe Season, type: :model do
  let!(:season) { FactoryBot.create(:season) }

  it "creates type season" do
    expect(season.type).to eq("Season")
  end
end
