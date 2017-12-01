class Note < ApplicationRecord
  belongs_to :job

  validates_presence_of :content
end
