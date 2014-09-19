class SprintStatesController < ApplicationController
  before_action :set_sprint_state, only: [:show, :edit, :update, :destroy]

  # GET /sprint_states
  # GET /sprint_states.json
  def index
    @sprint_states = SprintState.all
  end

  # GET /sprint_states/1
  # GET /sprint_states/1.json
  def show
  end

  # GET /sprint_states/new
  def new
    @sprint_state = SprintState.new
  end

  # GET /sprint_states/1/edit
  def edit
  end

  # POST /sprint_states
  # POST /sprint_states.json
  def create
    @sprint_state = SprintState.new(sprint_state_params)

    respond_to do |format|
      if @sprint_state.save
        format.html { redirect_to @sprint_state, notice: 'Sprint state was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint_state }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_states/1
  # PATCH/PUT /sprint_states/1.json
  def update
    respond_to do |format|
      if @sprint_state.update(sprint_state_params)
        format.html { redirect_to @sprint_state, notice: 'Sprint state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_states/1
  # DELETE /sprint_states/1.json
  def destroy
    @sprint_state.destroy
    respond_to do |format|
      format.html { redirect_to sprint_states_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_state
      @sprint_state = SprintState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_state_params
      params.require(:sprint_state).permit(:name, :description)
    end
end
