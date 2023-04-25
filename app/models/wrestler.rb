class Wrestler < ApplicationRecord
    belongs_to :team, :optional => true
    belongs_to :promotion, :optional => true
end
