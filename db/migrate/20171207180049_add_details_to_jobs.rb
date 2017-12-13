class AddDetailsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_url, :string
    add_column :jobs, :URL, :string
    add_column :jobs, :not_offered_date, :datetime
    add_column :jobs, :rejected, :boolean
  end
end
