class JobsController < ApplicationController
	before_action :set_job, only: [:show, :update, :destroy]

	# GET /jobs
	def index
		@jobs = Job.order(id: :desc)
		json_response(@jobs)
	end

	# POST /jobs
	def create
		@job = Job.create!(job_params)
		json_response(@job, :created)
	end

	# GET /jobs/:id
	def show
		@job = Job.find(params[:id])
		json_response(@job)
	end

	# GET /jobs/new
	def new
		@job = current_user.jobs.build
	end

	# PUT /jobs/:id
	def update
		@job.update(job_params)
		head :no_content
	end

	# DELETE /jobs/:id
	def destroy
		@job.destroy
		head :no_content
	end

	private

	def job_params
		# whitelist params
		params.require(:job).permit(:title, :company, :date_applied, :resume_sent, :cover_letter_sent, :cover_letter, :resume_file_name, :URL, :rejected, :not_offered)
	end

	def set_job
		@job = Job.find(params[:id])
	end

end
