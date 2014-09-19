class BoardColumnTypesController < ApplicationController
  before_action :set_board_column_type, only: [:show, :edit, :update, :destroy]

  # GET /board_column_types
  # GET /board_column_types.json
  def index
    @board_column_types = BoardColumnType.all
  end

  # GET /board_column_types/1
  # GET /board_column_types/1.json
  def show
  end

  # GET /board_column_types/new
  def new
    @board_column_type = BoardColumnType.new
  end

  # GET /board_column_types/1/edit
  def edit
  end

  # POST /board_column_types
  # POST /board_column_types.json
  def create
    @board_column_type = BoardColumnType.new(board_column_type_params)

    respond_to do |format|
      if @board_column_type.save
        format.html { redirect_to @board_column_type, notice: 'Board column type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @board_column_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @board_column_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_column_types/1
  # PATCH/PUT /board_column_types/1.json
  def update
    respond_to do |format|
      if @board_column_type.update(board_column_type_params)
        format.html { redirect_to @board_column_type, notice: 'Board column type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @board_column_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_column_types/1
  # DELETE /board_column_types/1.json
  def destroy
    @board_column_type.destroy
    respond_to do |format|
      format.html { redirect_to board_column_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_column_type
      @board_column_type = BoardColumnType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_column_type_params
      params.require(:board_column_type).permit(:name, :description, :is_charted)
    end
end
