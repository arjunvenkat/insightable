class Procedure < ActiveRecord::Base
  has_many :mission_procedures, dependent: :destroy
  has_many :missions, through: :mission_procedures

  has_many :questions, as: :questionable

  validates :name, :steps, presence: true
end
