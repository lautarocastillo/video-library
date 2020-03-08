FactoryBot.define do
  factory :episode do
    title { 'The trip' }
    plot { 'Don and Betty are going to Florida' }
    number { 3 }
    video { FactoryBot.create(:season).id }
  end
end
