class DefaultBoardColumnsController < ApplicationController
  before_action :set_default_board_column, only: [:show, :edit, :update, :destroy]

  # GET /default_board_columns
  # GET /default_board_columns.json
  def index
    @default_board_columns = DefaultBoardColumn.all
  end

  # GET /default_board_columns/1
  # GET /default_board_columns/1.json
  def show
  end

  # GET /default_board_columns/new
  def new
    @default_board_column = DefaultBoardColumn.new
  end

  # GET /default_board_columns/1/edit
  def edit
  end

  # POST /default_board_columns
  # POST /default_board_columns.json
  def create
    @default_board_column = DefaultBoardColumn.new(default_board_column_params)

    respond_to do |format|
      if @default_board_column.save
        format.html { redirect_to @default_board_column, notice: 'Default board column was successfully created.' }
        format.json { render action: 'show', status: :created, location: @default_board_column }
      else
        format.html { render action: 'new' }
        format.json { render json: @default_board_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /default_board_columns/1
  # PATCH/PUT /default_board_columns/1.json
  def update
    respond_to do |format|
      if @default_board_column.update(default_board_column_params)
        format.html { redirect_to @default_board_column, notice: 'Default board column was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @default_board_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /default_board_columns/1
  # DELETE /default_board_columns/1.json
  def destroy
    @default_board_column.destroy
    respond_to do |format|
      format.html { redirect_to default_board_columns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_default_board_column
      @default_board_column = DefaultBoardColumn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def default_board_column_params
      params.require(:default_board_column).permit(:name, :description, :boardcolumn_type_id)
    end
end
