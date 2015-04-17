class Mission < ActiveRecord::Base
  validates :date, :company, :customer_point_of_contact, presence: true

  has_many :mission_memberships, dependent: :destroy
  has_many :users, through: :mission_memberships

  has_many :mission_procedures, dependent: :destroy
  has_many :procedures, through: :mission_procedures

  has_many :mission_environments, dependent: :destroy
  has_many :environments, through: :mission_environments

  has_many :questions, as: :questionable

  has_one :backlog
end
