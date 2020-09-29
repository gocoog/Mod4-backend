class User < ApplicationRecord
    has_many :elections
    has_many :votes
end
