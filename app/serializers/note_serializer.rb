class NoteSerializer < ActiveModel::Serializer
	attributes :id, :content, :job_id, :created_at, :updated_at

	belongs_to :job
end
