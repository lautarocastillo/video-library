FactoryBot.define do
  factory :purchase do
    video_id { FactoryBot.create(:movie).id }
    user_id { FactoryBot.create(:user).id }
    quality { 'sd' }
  end
end
