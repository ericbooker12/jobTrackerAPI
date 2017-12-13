class AddInterviewScheduledToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :interview_scheduled, :boolean
  end
end
