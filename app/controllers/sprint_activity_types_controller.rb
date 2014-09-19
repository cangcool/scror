class SprintActivityTypesController < ApplicationController
  before_action :set_sprint_activity_type, only: [:show, :edit, :update, :destroy]

  # GET /sprint_activity_types
  # GET /sprint_activity_types.json
  def index
    @sprint_activity_types = SprintActivityType.all
  end

  # GET /sprint_activity_types/1
  # GET /sprint_activity_types/1.json
  def show
  end

  # GET /sprint_activity_types/new
  def new
    @sprint_activity_type = SprintActivityType.new
  end

  # GET /sprint_activity_types/1/edit
  def edit
  end

  # POST /sprint_activity_types
  # POST /sprint_activity_types.json
  def create
    @sprint_activity_type = SprintActivityType.new(sprint_activity_type_params)

    respond_to do |format|
      if @sprint_activity_type.save
        format.html { redirect_to @sprint_activity_type, notice: 'Sprint activity type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_activity_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_activity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_activity_types/1
  # PATCH/PUT /sprint_activity_types/1.json
  def update
    respond_to do |format|
      if @sprint_activity_type.update(sprint_activity_type_params)
        format.html { redirect_to @sprint_activity_type, notice: 'Sprint activity type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint_activity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_activity_types/1
  # DELETE /sprint_activity_types/1.json
  def destroy
    @sprint_activity_type.destroy
    respond_to do |format|
      format.html { redirect_to sprint_activity_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_activity_type
      @sprint_activity_type = SprintActivityType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_activity_type_params
      params.require(:sprint_activity_type).permit(:name, :format)
    end
end
