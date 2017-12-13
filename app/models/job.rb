class Job < ApplicationRecord
	has_many :notes, dependent: :destroy

	validates_presence_of :title, :company, :date_applied
end
