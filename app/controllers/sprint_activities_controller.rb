class SprintActivitiesController < ApplicationController
  before_action :set_sprint_activity, only: [:show, :edit, :update, :destroy]

  # GET /sprint_activities
  # GET /sprint_activities.json
  def index
    @sprint_activities = SprintActivity.all
  end

  # GET /sprint_activities/1
  # GET /sprint_activities/1.json
  def show
  end

  # GET /sprint_activities/new
  def new
    @sprint_activity = SprintActivity.new
  end

  # GET /sprint_activities/1/edit
  def edit
  end

  # POST /sprint_activities
  # POST /sprint_activities.json
  def create
    @sprint_activity = SprintActivity.new(sprint_activity_params)

    respond_to do |format|
      if @sprint_activity.save
        format.html { redirect_to @sprint_activity, notice: 'Sprint activity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_activity }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_activities/1
  # PATCH/PUT /sprint_activities/1.json
  def update
    respond_to do |format|
      if @sprint_activity.update(sprint_activity_params)
        format.html { redirect_to @sprint_activity, notice: 'Sprint activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_activities/1
  # DELETE /sprint_activities/1.json
  def destroy
    @sprint_activity.destroy
    respond_to do |format|
      format.html { redirect_to sprint_activities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_activity
      @sprint_activity = SprintActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_activity_params
      params.require(:sprint_activity).permit(:content, :spint_id, :sprint_activity_type_id)
    end
end
