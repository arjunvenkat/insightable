class Persona < ActiveRecord::Base
  has_many :mission_personas, dependent: :destroy
  has_many :missions, through: :mission_personas

  validates :name, :goals, presence: true
end
