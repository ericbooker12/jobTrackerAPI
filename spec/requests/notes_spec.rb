require 'rails_helper'

RSpec.describe 'Notes API' do
	# Initialize the test data
	let!(:job) { create(:job) }
	let!(:notes) { create_list(:note, 20, job_id: job.id) }
	let(:job_id) { job.id }
	let(:id) { notes.first.id }

	describe 'GET /jobs/:job_id/notes' do
		before { get "/jobs/#{job_id}/notes" }

		context 'when job exists' do
			it 'returns status code 200' do
				expect(response).to have_http_status(200)
			end

			it 'returns all job notes' do
				expect(json.size).to eq(20)
			end
		end

		context 'when job does not exist' do
			let(:job_id) { 0 }

			it 'returns status code 404' do
				expect(response).to have_http_status(404)
			end

			it 'returns a not found message' do
				expect(response.body).to match(/Couldn't find Job/)
			end
		end
	end

	describe 'GET /jobs/:job_id/notes/:id' do
		before { get "/jobs/#{job_id}/notes/#{id}" }

		context 'when job note exists' do
			it 'returns status code 200' do
				expect(response).to have_http_status(200)
			end

			it 'returns the note' do
				expect(json['id']).to eq(id)
			end
		end

		context 'when job note does not exist' do
			let(:id) { 0 }

			it 'returns status code 404' do
				expect(response).to have_http_status(404)
			end

			it 'returns a not found message' do
				expect(response.body).to match(/Couldn't find Note/)
			end
		end
	end

	# Test suite for DELETE /jobs/:id
	describe 'DELETE /jobs/:id' do
		before { delete "/jobs/#{job_id}/notes/#{id}" }

		it 'returns status code 204' do
			expect(response).to have_http_status(204)
		end
	end
end
















