class PtWorkshopsController < ApplicationController
  before_action :set_pt_workshop, only: [:show, :edit, :update, :destroy]

  # GET /pt_workshops
  # GET /pt_workshops.json
  def index
    @pt_workshops = PtWorkshop.all
  end

  # GET /pt_workshops/1
  # GET /pt_workshops/1.json
  def show
  end

  # GET /pt_workshops/new
  def new
    @pt_workshop = PtWorkshop.new
  end

  # GET /pt_workshops/1/edit
  def edit
  end

  # POST /pt_workshops
  # POST /pt_workshops.json
  def create
    @pt_workshop = PtWorkshop.new(pt_workshop_params)

    respond_to do |format|
      if @pt_workshop.save
        format.html { redirect_to @pt_workshop, notice: 'Pt workshop was successfully created.' }
        format.json { render :show, status: :created, location: @pt_workshop }
      else
        format.html { render :new }
        format.json { render json: @pt_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pt_workshops/1
  # PATCH/PUT /pt_workshops/1.json
  def update
    respond_to do |format|
      if @pt_workshop.update(pt_workshop_params)
        format.html { redirect_to @pt_workshop, notice: 'Pt workshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @pt_workshop }
      else
        format.html { render :edit }
        format.json { render json: @pt_workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pt_workshops/1
  # DELETE /pt_workshops/1.json
  def destroy
    @pt_workshop.destroy
    respond_to do |format|
      format.html { redirect_to pt_workshops_url, notice: 'Pt workshop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pt_workshop
      @pt_workshop = PtWorkshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pt_workshop_params
      params.require(:pt_workshop).permit(:date, :Person_id)
    end
end
