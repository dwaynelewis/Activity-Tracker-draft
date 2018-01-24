class SexEdsController < ApplicationController
  before_action :set_sex_ed, only: [:show, :edit, :update, :destroy]

  # GET /sex_eds
  # GET /sex_eds.json
  def index
    @sex_eds = SexEd.all
  end

  # GET /sex_eds/1
  # GET /sex_eds/1.json
  def show
  end

  # GET /sex_eds/new
  def new
    @sex_ed = SexEd.new
  end

  # GET /sex_eds/1/edit
  def edit
  end

  # POST /sex_eds
  # POST /sex_eds.json
  def create
    @sex_ed = SexEd.new(sex_ed_params)

    respond_to do |format|
      if @sex_ed.save
        format.html { redirect_to @sex_ed, notice: 'Sex ed was successfully created.' }
        format.json { render :show, status: :created, location: @sex_ed }
      else
        format.html { render :new }
        format.json { render json: @sex_ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sex_eds/1
  # PATCH/PUT /sex_eds/1.json
  def update
    respond_to do |format|
      if @sex_ed.update(sex_ed_params)
        format.html { redirect_to @sex_ed, notice: 'Sex ed was successfully updated.' }
        format.json { render :show, status: :ok, location: @sex_ed }
      else
        format.html { render :edit }
        format.json { render json: @sex_ed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sex_eds/1
  # DELETE /sex_eds/1.json
  def destroy
    @sex_ed.destroy
    respond_to do |format|
      format.html { redirect_to sex_eds_url, notice: 'Sex ed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sex_ed
      @sex_ed = SexEd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sex_ed_params
      params.require(:sex_ed).permit(:Period, :Hours, :Description)
    end
end
