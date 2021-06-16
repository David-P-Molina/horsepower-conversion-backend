class ConversionsController < ApplicationController
  before_action :set_conversion, only: [:show, :update, :destroy]

  # GET /conversions
  def index
    @conversions = Conversion.all
    #Figure out how to add username to json(Currently not working)
    render json: @conversions, only: [:id, :name, :username, :measure_1_quantity, :measure_2_quantity]
  end

  # GET /conversions/1
  def show
    render json: @conversion.slice(:id, :name, :user_id, :username, :measure_1_quantity, :measure_2_quantity)
  end

  # POST /conversions
  def create
    @conversion = Conversion.new(conversion_params)

    if @conversion.save
      render json: @conversion, status: :created, location: @conversion
    else
      render json: @conversion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /conversions/1
  # def update
  #   if @conversion.update(conversion_params)
  #     render json: @conversion
  #   else
  #     render json: @conversion.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /conversions/1
  # def destroy
  #   @conversion.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversion
      @conversion = Conversion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conversion_params
      params.require(:conversion).permit(:measure_1_quantity, :measure_2_quantity, :user_id, :name, :references)
    end
end
