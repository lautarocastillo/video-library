RSpec.describe Episode, type: :model do
  let!(:movie) { FactoryBot.create(:movie) }
  let!(:season) { FactoryBot.create(:season) }

  context "validation" do
    let(:good_episode) { FactoryBot.create(:episode, video: season) }

    it "creates with season" do
      expect(good_episode).to be_persisted
    end

    let(:bad_episode) { FactoryBot.build(:episode, video: movie) }
    
    it "raises error with movie" do
      expect(bad_episode).not_to be_valid
    end
  end
end
