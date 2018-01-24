class YoungAmericanasController < ApplicationController
  before_action :set_young_americana, only: [:show, :edit, :update, :destroy]

  # GET /young_americanas
  # GET /young_americanas.json
  def index
    @young_americanas = YoungAmericana.all
  end

  # GET /young_americanas/1
  # GET /young_americanas/1.json
  def show
  end

  # GET /young_americanas/new
  def new
    @young_americana = YoungAmericana.new
  end

  # GET /young_americanas/1/edit
  def edit
  end

  # POST /young_americanas
  # POST /young_americanas.json
  def create
    @young_americana = YoungAmericana.new(young_americana_params)

    respond_to do |format|
      if @young_americana.save
        format.html { redirect_to @young_americana, notice: 'Young americana was successfully created.' }
        format.json { render :show, status: :created, location: @young_americana }
      else
        format.html { render :new }
        format.json { render json: @young_americana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /young_americanas/1
  # PATCH/PUT /young_americanas/1.json
  def update
    respond_to do |format|
      if @young_americana.update(young_americana_params)
        format.html { redirect_to @young_americana, notice: 'Young americana was successfully updated.' }
        format.json { render :show, status: :ok, location: @young_americana }
      else
        format.html { render :edit }
        format.json { render json: @young_americana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /young_americanas/1
  # DELETE /young_americanas/1.json
  def destroy
    @young_americana.destroy
    respond_to do |format|
      format.html { redirect_to young_americanas_url, notice: 'Young americana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_young_americana
      @young_americana = YoungAmericana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def young_americana_params
      params.require(:young_americana).permit(:period, :hours, :description)
    end
end
