class Episode < ApplicationRecord
  alias_attribute :season, :video
  
  belongs_to :video
end
