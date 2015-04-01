class MissionMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :mission

  validates :user_id, :mission_id, presence: true
end
