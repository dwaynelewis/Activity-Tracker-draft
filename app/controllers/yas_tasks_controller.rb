class YasTasksController < ApplicationController
  before_action :set_yas_task, only: [:show, :edit, :update, :destroy]

  # GET /yas_tasks
  # GET /yas_tasks.json
  def index
    @yas_tasks = YasTask.all
  end

  # GET /yas_tasks/1
  # GET /yas_tasks/1.json
  def show
  end

  # GET /yas_tasks/new
  def new
    @yas_task = YasTask.new
  end

  # GET /yas_tasks/1/edit
  def edit
  end

  # POST /yas_tasks
  # POST /yas_tasks.json
  def create
    @yas_task = YasTask.new(yas_task_params)

    respond_to do |format|
      if @yas_task.save
        format.html { redirect_to @yas_task, notice: 'Yas task was successfully created.' }
        format.json { render :show, status: :created, location: @yas_task }
      else
        format.html { render :new }
        format.json { render json: @yas_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yas_tasks/1
  # PATCH/PUT /yas_tasks/1.json
  def update
    respond_to do |format|
      if @yas_task.update(yas_task_params)
        format.html { redirect_to @yas_task, notice: 'Yas task was successfully updated.' }
        format.json { render :show, status: :ok, location: @yas_task }
      else
        format.html { render :edit }
        format.json { render json: @yas_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yas_tasks/1
  # DELETE /yas_tasks/1.json
  def destroy
    @yas_task.destroy
    respond_to do |format|
      format.html { redirect_to yas_tasks_url, notice: 'Yas task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yas_task
      @yas_task = YasTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yas_task_params
      params.require(:yas_task).permit(:Period, :Hours, :Description)
    end
end
