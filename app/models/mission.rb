class Mission < ActiveRecord::Base
  validates :date, :company, :customer_point_of_contact, presence: true

  has_many :mission_memberships, dependent: :destroy
  has_many :users, through: :mission_memberships
end
