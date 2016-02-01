class Tea < ActiveRecord::Base
  validates :name, presence: true
  scope :expensive, -> { where("price >= ?", 50) }
end
