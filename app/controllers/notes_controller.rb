class NotesController < ApplicationController
	before_action :set_job
	before_action :set_job_note, only: [:show, :update, :destroy]

	# GET /jobs/:job_id/notes
	def index
		json_response(@job.notes)
	end

	# GET /jobs/:job_id/notes/:id
	def show
		json_response(@note)
	end

	# POST /jobs/:job_id/notes
	def create
		@job.notes.create!(note_params)
		json_response(@job, :created)
	end

	# PUT /jobs/:job_id/notes/:id
	def update
		@note.update(note_params)
		head :no_content
	end

	# DELETE /jobs/:job_id/notes/:id
	def destroy
		@note.destroy
		head :no_content
	end

	private

	def note_params
		params.permit(:content)
	end

	def set_job
		@job = Job.find(params[:job_id])
	end

	def set_job_note
		@note = @job.notes.find_by!(id: params[:id]) if @job
	end

end
