class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.date :date_applied
      t.boolean :resume_sent
      t.boolean :cover_letter_sent

      t.timestamps
    end
  end
end
