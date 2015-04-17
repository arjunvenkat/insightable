class Backlog < ActiveRecord::Base
  belongs_to :mission
  has_many :backlog_items

  validates :mission_id, presence: true
end
