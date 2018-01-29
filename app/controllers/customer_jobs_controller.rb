class CustomerJobsController < ApplicationController
  before_action :set_customer_job, only: [:show, :edit, :update, :destroy]

  # GET /customer_jobs
  # GET /customer_jobs.json
  def index
    @customer_jobs = CustomerJob.all
  end

  # GET /customer_jobs/1
  # GET /customer_jobs/1.json
  def show
  end

  # GET /customer_jobs/new
  def new
    @customer_job = CustomerJob.new
  end

  # GET /customer_jobs/1/edit
  def edit
  end

  # POST /customer_jobs
  # POST /customer_jobs.json
  def create
    @customer_job = CustomerJob.new(customer_job_params)

    respond_to do |format|
      if @customer_job.save
        format.html { redirect_to @customer_job, notice: 'Customer job was successfully created.' }
        format.json { render :show, status: :created, location: @customer_job }
      else
        format.html { render :new }
        format.json { render json: @customer_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_jobs/1
  # PATCH/PUT /customer_jobs/1.json
  def update
    respond_to do |format|
      if @customer_job.update(customer_job_params)
        format.html { redirect_to @customer_job, notice: 'Customer job was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_job }
      else
        format.html { render :edit }
        format.json { render json: @customer_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_jobs/1
  # DELETE /customer_jobs/1.json
  def destroy
    @customer_job.destroy
    respond_to do |format|
      format.html { redirect_to customer_jobs_url, notice: 'Customer job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_job
      @customer_job = CustomerJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_job_params
      params.require(:customer_job).permit(:job_reference, :name, :description, :status)
    end
end
