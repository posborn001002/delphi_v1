class PointOfPainsController < ApplicationController
  before_action :set_point_of_pain, only: [:show, :edit, :update, :destroy]

  # GET /point_of_pains
  # GET /point_of_pains.json
  def index
    @point_of_pains = PointOfPain.all
  end

  # GET /point_of_pains/1
  # GET /point_of_pains/1.json
  def show
  end

  # GET /point_of_pains/new
  def new
    @point_of_pain = PointOfPain.new
  end

  # GET /point_of_pains/1/edit
  def edit
  end

  # POST /point_of_pains
  # POST /point_of_pains.json
  def create
    @point_of_pain = PointOfPain.new(point_of_pain_params)

    respond_to do |format|
      if @point_of_pain.save
        format.html { redirect_to @point_of_pain, notice: 'Point of pain was successfully created.' }
        format.json { render :show, status: :created, location: @point_of_pain }
      else
        format.html { render :new }
        format.json { render json: @point_of_pain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_of_pains/1
  # PATCH/PUT /point_of_pains/1.json
  def update
    respond_to do |format|
      if @point_of_pain.update(point_of_pain_params)
        format.html { redirect_to @point_of_pain, notice: 'Point of pain was successfully updated.' }
        format.json { render :show, status: :ok, location: @point_of_pain }
      else
        format.html { render :edit }
        format.json { render json: @point_of_pain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_of_pains/1
  # DELETE /point_of_pains/1.json
  def destroy
    @point_of_pain.destroy
    respond_to do |format|
      format.html { redirect_to point_of_pains_url, notice: 'Point of pain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_of_pain
      @point_of_pain = PointOfPain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_of_pain_params
      params.require(:point_of_pain).permit(:description, :PTWorkshop_id)
    end
end
