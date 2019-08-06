class Tag < ApplicationRecord
  has_many :gossip_tags
  has_many :my_gossips, through: :gossip_tags
end
