RSpec.describe Purchase, type: :model do
  let(:purchase) { FactoryBot.create(:purchase, quality: :hd) }

  context "callbacks" do
    it "set_price" do
      expect(purchase.price).to be(Purchase::AVAILABLE_OPTIONS[:hd])
    end

    it "set_expiration" do
      now = DateTime.now
      expect(purchase.expires_at).to be_between(now + 47.hours, now + 49.hours)
    end
  end

  context "user has no content" do
    it "#create" do
      expect(purchase).to be_persisted
    end
  end

  context "user has content already" do
    let!(:purchase) { FactoryBot.create(:purchase, quality: :hd) }

    it "raises error when active" do
      dup_content = Purchase.create(user: purchase.user, video: purchase.video)

      expect(dup_content).not_to be_valid
    end

    it "creates when is expired" do
      allow(purchase).to receive(:expires_at).and_return(DateTime.now - 10.days)
      dup_content = Purchase.create(user: purchase.user, video: purchase.video)

      expect(dup_content).not_to be_valid
    end
  end
end
