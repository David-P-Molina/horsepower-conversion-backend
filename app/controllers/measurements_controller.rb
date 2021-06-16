class MeasurementsController < ApplicationController
    before_action :set_measurement, only: [:show, :update, :destroy]
  
    # GET /measurements
    def index
      @measurements = Measurement.all
      render json: @measurements, except: [:updated_at, :created_at]
    end
  
    # GET /measurements/1
    def show
      render json: @measurement.slice(:id, :name, :animal_power_to_hp, :hp_equivalent, :source, :standard)
    end
  
    # POST /measurements
    # def create
    #   @measurement = Measurement.new(measurement_params)
  
    #   if @measurement.save
    #     render json: @measurement, status: :created, location: @measurement
    #   else
    #     render json: @measurement.errors, status: :unprocessable_entity
    #   end
    # end
  
    # PATCH/PUT /measurements/1
    # def update
    #   if @measurement.update(measurement_params)
    #     render json: @measurement
    #   else
    #     render json: @measurement.errors, status: :unprocessable_entity
    #   end
    # end
  
    # DELETE /measurements/1
    # def destroy
    #   @measurement.destroy
    # end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_measurement
        @measurement = Measurement.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def measurement_params
        params.require(:measurement).permit(:hp_equivalent, :animal_power_to_hp, :source, :standard, :name, :references)
      end
  end
  