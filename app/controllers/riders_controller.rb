class RidersController < ApplicationController
  before_action :set_rider, only: [:show, :create, :update, :destroy]
  #before_action :authenticate, only: [:show, :update, :destroy]

  # GET /riders/1
  # GET /riders/1.json
  def show
    #needs rider-permission for showing
    format.html { redirect_to @rider, notice: 'OK' }
    format.json { render :show, status: :ok, location: @rider }
  end

  # POST /riders
  # POST /riders.json
  def create
    @rider = Rider.new(rider_params)

    respond_to do |format|
      if @rider.save
        format.html { redirect_to @rider, notice: 'rider was successfully created.' }
        format.json { render :show, status: :created, location: @rider }
      else
        format.html { render :new }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riders/1
  # PATCH/PUT /riders/1.json
  def update
    #needs rider-permission for updating
    respond_to do |format|
      if @rider.update(rider_params)
        format.html { redirect_to @rider, notice: 'rider was successfully updated.' }
        format.json { render :show, status: :ok, location: @rider }
      else
        format.html { render :edit }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Riders/1
  # DELETE /Riders/1.json
  def destroy
    #needs Rider-permission for destroying
    @rider.destroy
    respond_to do |format|
      format.html { redirect_to riders_url, notice: 'rider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        @rider = Rider.where(api_key: token).first
      end
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_rider
      @rider = Rider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rider_params
      params.require(:rider).permit(:first_name, :middle_initial, :last_name, :age, :addr1, :addr2, :city, :state, :zip, :region, :email, :phone, :password)
    end
end
