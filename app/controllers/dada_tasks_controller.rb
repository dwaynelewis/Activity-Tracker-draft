class DadaTasksController < ApplicationController
  before_action :set_dada_task, only: [:show, :edit, :update, :destroy]

  # GET /dada_tasks
  # GET /dada_tasks.json
  def index
    @dada_tasks = DadaTask.all
  end

  # GET /dada_tasks/1
  # GET /dada_tasks/1.json
  def show
  end

  # GET /dada_tasks/new
  def new
    @dada_task = DadaTask.new
  end

  # GET /dada_tasks/1/edit
  def edit
  end

  # POST /dada_tasks
  # POST /dada_tasks.json
  def create
    @dada_task = DadaTask.new(dada_task_params)

    respond_to do |format|
      if @dada_task.save
        format.html { redirect_to @dada_task, notice: 'Dada task was successfully created.' }
        format.json { render :show, status: :created, location: @dada_task }
      else
        format.html { render :new }
        format.json { render json: @dada_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dada_tasks/1
  # PATCH/PUT /dada_tasks/1.json
  def update
    respond_to do |format|
      if @dada_task.update(dada_task_params)
        format.html { redirect_to @dada_task, notice: 'Dada task was successfully updated.' }
        format.json { render :show, status: :ok, location: @dada_task }
      else
        format.html { render :edit }
        format.json { render json: @dada_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dada_tasks/1
  # DELETE /dada_tasks/1.json
  def destroy
    @dada_task.destroy
    respond_to do |format|
      format.html { redirect_to dada_tasks_url, notice: 'Dada task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dada_task
      @dada_task = DadaTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dada_task_params
      params.require(:dada_task).permit(:Period, :Hours, :Description)
    end
end
