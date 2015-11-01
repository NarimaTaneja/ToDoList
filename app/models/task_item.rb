class TaskItem < ActiveRecord::Base
  belongs_to :task
  def complete?
  	!completed_at.blank?
  end
end
