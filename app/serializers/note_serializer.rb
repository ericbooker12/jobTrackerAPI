class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :job_id


  belongs_to :job
end
