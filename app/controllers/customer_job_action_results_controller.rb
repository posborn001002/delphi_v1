class CustomerJobActionResultsController < ApplicationController
  before_action :set_customer_job_action_result, only: [:show, :edit, :update, :destroy]

  # GET /customer_job_action_results
  # GET /customer_job_action_results.json
  def index
    @customer_job_action_results = CustomerJobActionResults.all
  end

  # GET /customer_job_action_results/1
  # GET /customer_job_action_results/1.json
  def show
  end

  # GET /customer_job_action_results/new
  def new
    @customer_job_action_result = CustomerJobActionResults.new
  end

  # GET /customer_job_action_results/1/edit
  def edit
  end

  # POST /customer_job_action_results
  # POST /customer_job_action_results.json
  def create
    @customer_job_action_result = CustomerJobActionResults.new(customer_job_action_result_params)

    respond_to do |format|
      if @customer_job_action_result.save
        format.html { redirect_to @customer_job_action_result, notice: 'Customer job action results was successfully created.' }
        format.json { render :show, status: :created, location: @customer_job_action_result }
      else
        format.html { render :new }
        format.json { render json: @customer_job_action_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_job_action_results/1
  # PATCH/PUT /customer_job_action_results/1.json
  def update
    respond_to do |format|
      if @customer_job_action_result.update(customer_job_action_result_params)
        format.html { redirect_to @customer_job_action_result, notice: 'Customer job action results was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_job_action_result }
      else
        format.html { render :edit }
        format.json { render json: @customer_job_action_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_job_action_results/1
  # DELETE /customer_job_action_results/1.json
  def destroy
    @customer_job_action_result.destroy
    respond_to do |format|
      format.html { redirect_to customer_job_action_results_index_url, notice: 'Customer job action results was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_job_action_result
      @customer_job_action_result = CustomerJobActionResults.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_job_action_result_params
      params.require(:customer_job_action_result).permit(:CustomerJob_id, :ActionResults_id)
    end
end
