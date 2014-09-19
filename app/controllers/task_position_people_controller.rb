class TaskPositionPeopleController < ApplicationController
  before_action :set_task_position_person, only: [:show, :edit, :update, :destroy]

  # GET /task_position_people
  # GET /task_position_people.json
  def index
    @task_position_people = TaskPositionPerson.all
  end

  # GET /task_position_people/1
  # GET /task_position_people/1.json
  def show
  end

  # GET /task_position_people/new
  def new
    @task_position_person = TaskPositionPerson.new
  end

  # GET /task_position_people/1/edit
  def edit
  end

  # POST /task_position_people
  # POST /task_position_people.json
  def create
    @task_position_person = TaskPositionPerson.new(task_position_person_params)

    respond_to do |format|
      if @task_position_person.save
        format.html { redirect_to @task_position_person, notice: 'Task position person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task_position_person }
      else
        format.html { render action: 'new' }
        format.json { render json: @task_position_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_position_people/1
  # PATCH/PUT /task_position_people/1.json
  def update
    respond_to do |format|
      if @task_position_person.update(task_position_person_params)
        format.html { redirect_to @task_position_person, notice: 'Task position person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task_position_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_position_people/1
  # DELETE /task_position_people/1.json
  def destroy
    @task_position_person.destroy
    respond_to do |format|
      format.html { redirect_to task_position_people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_position_person
      @task_position_person = TaskPositionPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_position_person_params
      params.require(:task_position_person).permit(:task_position_id, :user_id, :assigner_id)
    end
end
