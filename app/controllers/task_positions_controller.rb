class TaskPositionsController < ApplicationController
  before_action :set_task_position, only: [:show, :edit, :update, :destroy]

  # GET /task_positions
  # GET /task_positions.json
  def index
    @task_positions = TaskPosition.all
  end

  # GET /task_positions/1
  # GET /task_positions/1.json
  def show
  end

  # GET /task_positions/new
  def new
    @task_position = TaskPosition.new
  end

  # GET /task_positions/1/edit
  def edit
  end

  # POST /task_positions
  # POST /task_positions.json
  def create
    @task_position = TaskPosition.new(task_position_params)

    respond_to do |format|
      if @task_position.save
        format.html { redirect_to @task_position, notice: 'Task position was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task_position }
      else
        format.html { render action: 'new' }
        format.json { render json: @task_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_positions/1
  # PATCH/PUT /task_positions/1.json
  def update
    respond_to do |format|
      if @task_position.update(task_position_params)
        format.html { redirect_to @task_position, notice: 'Task position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_positions/1
  # DELETE /task_positions/1.json
  def destroy
    @task_position.destroy
    respond_to do |format|
      format.html { redirect_to task_positions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_position
      @task_position = TaskPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_position_params
      params.require(:task_position).permit(:task_id, :sprint_board_column_id, :is_block)
    end
end
