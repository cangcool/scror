class SprintBoardColumnsController < ApplicationController
  before_action :set_sprint_board_column, only: [:show, :edit, :update, :destroy]

  # GET /sprint_board_columns
  # GET /sprint_board_columns.json
  def index
    @sprint_board_columns = SprintBoardColumn.all
  end

  # GET /sprint_board_columns/1
  # GET /sprint_board_columns/1.json
  def show
  end

  # GET /sprint_board_columns/new
  def new
    @sprint_board_column = SprintBoardColumn.new
  end

  # GET /sprint_board_columns/1/edit
  def edit
  end

  # POST /sprint_board_columns
  # POST /sprint_board_columns.json
  def create
    @sprint_board_column = SprintBoardColumn.new(sprint_board_column_params)

    respond_to do |format|
      if @sprint_board_column.save
        format.html { redirect_to @sprint_board_column, notice: 'Sprint board column was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_board_column }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_board_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_board_columns/1
  # PATCH/PUT /sprint_board_columns/1.json
  def update
    respond_to do |format|
      if @sprint_board_column.update(sprint_board_column_params)
        format.html { redirect_to @sprint_board_column, notice: 'Sprint board column was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint_board_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_board_columns/1
  # DELETE /sprint_board_columns/1.json
  def destroy
    @sprint_board_column.destroy
    respond_to do |format|
      format.html { redirect_to sprint_board_columns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_board_column
      @sprint_board_column = SprintBoardColumn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_board_column_params
      params.require(:sprint_board_column).permit(:name, :description, :sprint_id, :user_id, :boardcolumn_type_id)
    end
end
