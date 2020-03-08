RSpec.describe User, type: :model do
  context "blank email" do
    it "does not create" do
      user = User.create
      expect(user).not_to be_valid
    end
  end

  context "with valid format" do
    it "#create" do
      email = 'email@email.com'
      user = User.create(email: email)

      expect(user).to be_persisted
      expect(user.email).to eq(email)
    end
  end

  context "with invalid format" do
    it "does not create" do
      user = User.create(email: 'email')
      expect(user).not_to be_valid
    end
  end
end
