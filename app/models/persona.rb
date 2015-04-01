class Persona < ActiveRecord::Base
  has_many :mission_personas, dependent: :destroy
  has_many :missions, through: :mission_personas

  has_many :questions, as: :questionable

  validates :name, :goals, presence: true

end
