class AddCoverLetterToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :cover_letter, :text
  end
end
