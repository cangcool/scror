class DefaultTaskTypesController < ApplicationController
  before_action :set_default_task_type, only: [:show, :edit, :update, :destroy]

  # GET /default_task_types
  # GET /default_task_types.json
  def index
    @default_task_types = DefaultTaskType.all
  end

  # GET /default_task_types/1
  # GET /default_task_types/1.json
  def show
  end

  # GET /default_task_types/new
  def new
    @default_task_type = DefaultTaskType.new
  end

  # GET /default_task_types/1/edit
  def edit
  end

  # POST /default_task_types
  # POST /default_task_types.json
  def create
    @default_task_type = DefaultTaskType.new(default_task_type_params)

    respond_to do |format|
      if @default_task_type.save
        format.html { redirect_to @default_task_type, notice: 'Default task type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @default_task_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @default_task_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /default_task_types/1
  # PATCH/PUT /default_task_types/1.json
  def update
    respond_to do |format|
      if @default_task_type.update(default_task_type_params)
        format.html { redirect_to @default_task_type, notice: 'Default task type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @default_task_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /default_task_types/1
  # DELETE /default_task_types/1.json
  def destroy
    @default_task_type.destroy
    respond_to do |format|
      format.html { redirect_to default_task_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_default_task_type
      @default_task_type = DefaultTaskType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def default_task_type_params
      params.require(:default_task_type).permit(:name, :color_code)
    end
end
