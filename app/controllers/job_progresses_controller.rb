class JobProgressesController < ApplicationController
  before_action :set_job_progress, only: [:show, :edit, :update, :destroy]

  # GET /job_progresses
  # GET /job_progresses.json
  def index
    @job_progresses = JobProgress.all
  end

  # GET /job_progresses/1
  # GET /job_progresses/1.json
  def show
  end

  # GET /job_progresses/new
  def new
    @job_progress = JobProgress.new
  end

  # GET /job_progresses/1/edit
  def edit
  end

  # POST /job_progresses
  # POST /job_progresses.json
  def create
    @job_progress = JobProgress.new(job_progress_params)

    respond_to do |format|
      if @job_progress.save
        format.html { redirect_to @job_progress, notice: 'Job progress was successfully created.' }
        format.json { render :show, status: :created, location: @job_progress }
      else
        format.html { render :new }
        format.json { render json: @job_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_progresses/1
  # PATCH/PUT /job_progresses/1.json
  def update
    respond_to do |format|
      if @job_progress.update(job_progress_params)
        format.html { redirect_to @job_progress, notice: 'Job progress was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_progress }
      else
        format.html { render :edit }
        format.json { render json: @job_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_progresses/1
  # DELETE /job_progresses/1.json
  def destroy
    @job_progress.destroy
    respond_to do |format|
      format.html { redirect_to job_progresses_url, notice: 'Job progress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_progress
      @job_progress = JobProgress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_progress_params
      params.require(:job_progress).permit(:CustomerJob_id, :ActionResult_id, :Lookup_id)
    end
end
