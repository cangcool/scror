class SprintTaskTypesController < ApplicationController
  before_action :set_sprint_task_type, only: [:show, :edit, :update, :destroy]

  # GET /sprint_task_types
  # GET /sprint_task_types.json
  def index
    @sprint_task_types = SprintTaskType.all
  end

  # GET /sprint_task_types/1
  # GET /sprint_task_types/1.json
  def show
  end

  # GET /sprint_task_types/new
  def new
    @sprint_task_type = SprintTaskType.new
  end

  # GET /sprint_task_types/1/edit
  def edit
  end

  # POST /sprint_task_types
  # POST /sprint_task_types.json
  def create
    @sprint_task_type = SprintTaskType.new(sprint_task_type_params)

    respond_to do |format|
      if @sprint_task_type.save
        format.html { redirect_to @sprint_task_type, notice: 'Sprint task type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_task_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_task_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_task_types/1
  # PATCH/PUT /sprint_task_types/1.json
  def update
    respond_to do |format|
      if @sprint_task_type.update(sprint_task_type_params)
        format.html { redirect_to @sprint_task_type, notice: 'Sprint task type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint_task_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_task_types/1
  # DELETE /sprint_task_types/1.json
  def destroy
    @sprint_task_type.destroy
    respond_to do |format|
      format.html { redirect_to sprint_task_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_task_type
      @sprint_task_type = SprintTaskType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_task_type_params
      params.require(:sprint_task_type).permit(:name, :sprint_id, :color_code, :user_id)
    end
end
