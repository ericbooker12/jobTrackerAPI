FactoryGirl.define do
	factory :note do
		content { Faker::HitchhikersGuideToTheGalaxy.marvin_quote }
		job_id nil
	end
end