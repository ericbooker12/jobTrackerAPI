require 'rails_helper'

RSpec.describe Job, type: :model do
	subject { described_class.new }

	it "is valid with valid attributes" do
		subject.title = "Some Title"
		subject.company = "Some Company"
		subject.date_applied = DateTime.now

		expect(subject).to be_valid
	end

	it "is not valid without a title" do
		subject.title = nil
		subject.company = "Some Company"
		subject.date_applied = DateTime.now
		expect(subject).to_not be_valid
	end

	it "is not valid without a date_applied" do
		subject.title = "Some Title"
		subject.company = "Some Company"
		subject.date_applied = nil

		expect(subject).to_not be_valid

	end

	it { should have_many(:notes).dependent(:destroy) }

	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:company) }
end
