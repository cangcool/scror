class SprintChartRecordsController < ApplicationController
  before_action :set_sprint_chart_record, only: [:show, :edit, :update, :destroy]

  # GET /sprint_chart_records
  # GET /sprint_chart_records.json
  def index
    @sprint_chart_records = SprintChartRecord.all
  end

  # GET /sprint_chart_records/1
  # GET /sprint_chart_records/1.json
  def show
  end

  # GET /sprint_chart_records/new
  def new
    @sprint_chart_record = SprintChartRecord.new
  end

  # GET /sprint_chart_records/1/edit
  def edit
  end

  # POST /sprint_chart_records
  # POST /sprint_chart_records.json
  def create
    @sprint_chart_record = SprintChartRecord.new(sprint_chart_record_params)

    respond_to do |format|
      if @sprint_chart_record.save
        format.html { redirect_to @sprint_chart_record, notice: 'Sprint chart record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_chart_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_chart_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_chart_records/1
  # PATCH/PUT /sprint_chart_records/1.json
  def update
    respond_to do |format|
      if @sprint_chart_record.update(sprint_chart_record_params)
        format.html { redirect_to @sprint_chart_record, notice: 'Sprint chart record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint_chart_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_chart_records/1
  # DELETE /sprint_chart_records/1.json
  def destroy
    @sprint_chart_record.destroy
    respond_to do |format|
      format.html { redirect_to sprint_chart_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_chart_record
      @sprint_chart_record = SprintChartRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_chart_record_params
      params.require(:sprint_chart_record).permit(:sprint_board_column_id, :date, :task_total)
    end
end
