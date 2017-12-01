class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
