class DemoUsersController < ApplicationController
  before_action :set_demo_user, only: [:show]

  # GET /demo_users
  # GET /demo_users.json
  def index
    @demo_users = DemoUser.all
  end

  # GET /demo_users/1
  # GET /demo_users/1.json
  def show
  end

  # GET /demo_users/new
  def new
    @demo_user = DemoUser.new
  end

  # POST /demo_users
  # POST /demo_users.json
  def create
    @demo_user = DemoUser.new(demo_user_params)

    respond_to do |format|
      if @demo_user.save
        format.html { redirect_to @demo_user, notice: 'Demo user was successfully created.' }
        f9ormat.json { render action: 'show', status: :created, location: @demo_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @demo_user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo_user
      @demo_user = DemoUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demo_user_params
      # params[:demo_user]
      params.require(:demo_user).permit(:email)
    end
end
