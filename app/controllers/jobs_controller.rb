class JobsController < ApplicationController
	before_action :set_job, only: [:show, :update, :destroy]

	# GET /jobs
	def index
		p Job.first.id
		@jobs = Job.all
		json_response(@jobs)
	end

	# POST /jobs
	def create
		@job = Job.create!(job_params)
		json_response(@job, :created)
	end

	# GET /jobs/:id
	def show
		json_response(@job)
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
		params.permit(:title, :company, :note)
	end

	def set_job
		@job = Job.find(params[:id])
	end

end
