class Insight < ActiveRecord::Base
  belongs_to :insightable, polymorphic: true
  belongs_to :user
end
