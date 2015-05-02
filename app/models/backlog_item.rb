class BacklogItem < ActiveRecord::Base
  belongs_to :backlog
  belongs_to :question
  # belongs_to :assigned_to, class_name: 'User', foreign_key: 'assigned_to'

  has_many :insights, as: :insightable
  has_many :pictures, as: :pictureable

  validates :question_id, :backlog_id, presence: true
end
