class UsersController < ApplicationController
  before_action :set_user, only: [:show, :create, :update, :destroy]
  before_action :authenticate, only: [:show, :update, :destroy]

  # GET /users/1
  # GET /users/1.json
  def show
    #needs user-permission for showing
    format.html { redirect_to @user, notice: 'OK' }
    format.json { render :show, status: :ok, location: @user }
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    #needs user-permission for updating
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    #needs user-permission for destroying
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def authenticate
      # authenticate_or_request_with_http_token do |token, options|
      #   @user = User.where(api_key: token).first
      # end
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :middle_initial, :last_name, :age, :addr1, :addr2, :city, :state, :zip, :region, :email, :phone, :password)
    end
end
