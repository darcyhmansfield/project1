class Wrestler < ApplicationRecord
    has_and_belongs_to_many :teams, :optional => true
    belongs_to :promotion, :optional => true
end
