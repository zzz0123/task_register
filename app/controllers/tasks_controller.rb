class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.where(start: Time.at(params[:start].to_i)..Time.at(params[:end].to_i)).select(:id, :start, :title)
    respond_to do |format|
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @task.start = params[:date] if params[:date]
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to '/'
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to '/'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :description, :start, :note)
    end
end

