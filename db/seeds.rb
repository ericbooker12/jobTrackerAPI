require 'faker'

Job.delete_all

i = 1
50.times do

	# position = positions[index.rand(0..positions.length - 1)]
	Job.create!(
		title: Faker::Company.profession,
		company: Faker::Company.name,
		date_applied: Faker::Date.between(30.days.ago, Date.today),
		resume_sent: i.even?,
		cover_letter_sent: i%3==0
	)
	i += 1
end

2000.times do
	Note.create!(
		content: Faker::HitchhikersGuideToTheGalaxy.quote,
		job_id: rand(1..50)
	)

end