class SignUpUsersController < ApplicationController
  before_action :set_sign_up_user, only: [:show, :edit, :update, :destroy]

  # GET /sign_up_users
  # GET /sign_up_users.json
  def index
    @sign_up_users = SignUpUser.all
  end

  # GET /sign_up_users/1
  # GET /sign_up_users/1.json
  def show
  end

  # GET /sign_up_users/new
  def new
    @sign_up_user = SignUpUser.new
    # @user = SignUpUser.new
  end

  # GET /sign_up_users/1/edit
  def edit
  end

  # POST /sign_up_users
  # POST /sign_up_users.json
  def create
    @sign_up_user = SignUpUser.new(sign_up_user_params)
    # @sign_up_user = SignUpUser.new(user_params)

    respond_to do |format|
      if @sign_up_user.save
        format.html { redirect_to @sign_up_user, notice: 'Sign up user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sign_up_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @sign_up_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_up_users/1
  # PATCH/PUT /sign_up_users/1.json
  def update
    respond_to do |format|
      if @sign_up_user.update(sign_up_user_params)
        format.html { redirect_to @sign_up_user, notice: 'Sign up user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sign_up_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_up_users/1
  # DELETE /sign_up_users/1.json
  def destroy
    @sign_up_user.destroy
    respond_to do |format|
      format.html { redirect_to sign_up_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_up_user
      @sign_up_user = SignUpUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_up_user_params
      # params[:sign_up_user]
      # super.user_params
      params.require(:sign_up_user).permit(:username, :password, :email, :password_salt, :password_hash)
    end

end
