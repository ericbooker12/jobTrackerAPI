class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :company, :date_applied, :resume_sent, :cover_letter_sent

  has_many :notes
end
