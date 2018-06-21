 class AriclesController < ApplicationController
  before_action :set_aricle, only: [:show, :edit, :update, :destroy]

  # GET /aricles
  # GET /aricles.json
  def index
    @aricles = Aricle.all
  end

  # GET /aricles/1
  # GET /aricles/1.json
  def show
  end

  # GET /aricles/new
  def new
    @aricle = Aricle.new
  end

  # GET /aricles/1/edit
  def edit
  end

  # POST /aricles
  # POST /aricles.json
  def create
    @aricle = Aricle.new(aricle_params)

    respond_to do |format|
      if @aricle.save
        format.html { redirect_to @aricle, notice: 'Aricle was successfully created.' }
        format.json { render :show, status: :created, location: @aricle }
      else
        format.html { render :new }
        format.json { render json: @aricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aricles/1
  # PATCH/PUT /aricles/1.json
  def update
    respond_to do |format|
      if @aricle.update(aricle_params)
        format.html { redirect_to @aricle, notice: 'Aricle was successfully updated.' }
        format.json { render :show, status: :ok, location: @aricle }
      else
        format.html { render :edit }
        format.json { render json: @aricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aricles/1
  # DELETE /aricles/1.json
  def destroy
    @aricle.destroy
    respond_to do |format|
      format.html { redirect_to aricles_url, notice: 'Aricle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aricle
      @aricle = Aricle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aricle_params
      params.require(:aricle).permit(:title, :description)
    end
end
