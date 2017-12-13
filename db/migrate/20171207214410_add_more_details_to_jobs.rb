class AddMoreDetailsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :date_called_for_interview, :date
    add_column :jobs, :interview_date, :date
  end
end
