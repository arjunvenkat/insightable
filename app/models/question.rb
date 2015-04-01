class Question < ActiveRecord::Base
  belongs_to :questionable, polymorphic: true

  # has_many :questions, as: :questionable
end
