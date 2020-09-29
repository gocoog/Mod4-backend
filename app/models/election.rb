class Election < ApplicationRecord
    belongs_to :user
    has_many :votes
end
