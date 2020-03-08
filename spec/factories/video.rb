FactoryBot.define do
  factory :movie do
    type { 'Movie' }
    title { 'Fast and Furious 157: Second part' }
    plot { 'Toretto is stil the president of Mars, but not for long. Many zombies/aliens want to take the control.' }
  end

  factory :season do
    type { 'Season' }
    title { 'The Office' }
    plot { 'After planning an office baby shower for Jan, Michael is upset when he finds out that she had the baby without him--even though he is already been told that he is not the babys father.' }
    number { 5 }
  end
end
