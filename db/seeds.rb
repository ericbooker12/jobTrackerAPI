require 'faker'

Job.delete_all

i = 1
50.times do

	# position = positions[index.rand(0..positions.length - 1)]
	j = Job.create!(title: Faker::Simpsons.character, company: Faker::Simpsons.location, date_applied: Faker::Date.between(30.days.ago, Date.today), resume_sent: true, cover_letter_sent: true)
end

100.times do
	note = Note.create!(content: Faker::Simpsons.quote, job_id: rand(1...50))
	note.save
end