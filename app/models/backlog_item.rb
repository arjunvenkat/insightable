class BacklogItem < ActiveRecord::Base
  belongs_to :backlog
  belongs_to :question
  # belongs_to :assigned_to, class_name: 'User', foreign_key: 'assigned_to'

  validates :question_id, :backlog_id, presence: true
end
