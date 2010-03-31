class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :location
  belongs_to :user
end
