class ChiensController < ApplicationController
  before_action :set_chien, only: [:show, :edit, :update, :destroy]

  # GET /chiens
  # GET /chiens.json
  def index
    @chiens = Chien.all
  end

  # GET /chiens/1
  # GET /chiens/1.json
  def show
  end

  # GET /chiens/new
  def new
    @chien = Chien.new
  end

  # GET /chiens/1/edit
  def edit
  end

  # POST /chiens
  # POST /chiens.json
  def create
    @chien = Chien.new(chien_params)

    respond_to do |format|
      if @chien.save
        format.html { redirect_to @chien, notice: 'Chien was successfully created.' }
        format.json { render :show, status: :created, location: @chien }
      else
        format.html { render :new }
        format.json { render json: @chien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chiens/1
  # PATCH/PUT /chiens/1.json
  def update
    respond_to do |format|
      if @chien.update(chien_params)
        format.html { redirect_to @chien, notice: 'Chien was successfully updated.' }
        format.json { render :show, status: :ok, location: @chien }
      else
        format.html { render :edit }
        format.json { render json: @chien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chiens/1
  # DELETE /chiens/1.json
  def destroy
    @chien.destroy
    respond_to do |format|
      format.html { redirect_to chiens_url, notice: 'Chien was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chien
      @chien = Chien.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chien_params
      params.require(:chien).permit(:nom, :race)
    end
end
