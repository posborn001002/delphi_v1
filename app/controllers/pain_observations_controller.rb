class PainObservationsController < ApplicationController
  before_action :set_pain_observation, only: [:show, :edit, :update, :destroy]

  # GET /pain_observations
  # GET /pain_observations.json
  def index
    @pain_observations = PainObservation.all
  end

  # GET /pain_observations/1
  # GET /pain_observations/1.json
  def show
  end

  # GET /pain_observations/new
  def new
    @pain_observation = PainObservation.new
  end

  # GET /pain_observations/1/edit
  def edit
  end

  # POST /pain_observations
  # POST /pain_observations.json
  def create
    @pain_observation = PainObservation.new(pain_observation_params)

    respond_to do |format|
      if @pain_observation.save
        format.html { redirect_to @pain_observation, notice: 'Pain observation was successfully created.' }
        format.json { render :show, status: :created, location: @pain_observation }
      else
        format.html { render :new }
        format.json { render json: @pain_observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pain_observations/1
  # PATCH/PUT /pain_observations/1.json
  def update
    respond_to do |format|
      if @pain_observation.update(pain_observation_params)
        format.html { redirect_to @pain_observation, notice: 'Pain observation was successfully updated.' }
        format.json { render :show, status: :ok, location: @pain_observation }
      else
        format.html { render :edit }
        format.json { render json: @pain_observation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pain_observations/1
  # DELETE /pain_observations/1.json
  def destroy
    @pain_observation.destroy
    respond_to do |format|
      format.html { redirect_to pain_observations_url, notice: 'Pain observation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pain_observation
      @pain_observation = PainObservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pain_observation_params
      params.require(:pain_observation).permit(:PointOfPain_id, :JobProgress_id, :pass_fail)
    end
end
