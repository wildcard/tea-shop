class Tea < ActiveRecord::Base
  validates :name, presence: true
end
