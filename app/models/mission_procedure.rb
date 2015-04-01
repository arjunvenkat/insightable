class MissionProcedure < ActiveRecord::Base
  belongs_to :mission
  belongs_to :procecure

  validates :mission_id, :procedure_id, presence: true
end
