FactoryGirl.define do
	factory :job do
		title { Faker::Company.profession }
		company { Faker::Company.name }
	end
end