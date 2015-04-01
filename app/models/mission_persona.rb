class MissionPersona < ActiveRecord::Base
  belongs_to :mission
  belongs_to :persona

  validates :mission_id, :persona_id, presence: true
end
