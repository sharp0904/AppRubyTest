class OiseausController < ApplicationController
  before_action :set_oiseau, only: [:show, :edit, :update, :destroy]

  # GET /oiseaus
  # GET /oiseaus.json
  def index
    @oiseaus = Oiseau.all
  end

  # GET /oiseaus/1
  # GET /oiseaus/1.json
  def show
  end

  # GET /oiseaus/new
  def new
    @oiseau = Oiseau.new
  end

  # GET /oiseaus/1/edit
  def edit
  end

  # POST /oiseaus
  # POST /oiseaus.json
  def create
    @oiseau = Oiseau.new(oiseau_params)

    respond_to do |format|
      if @oiseau.save
        format.html { redirect_to @oiseau, notice: 'Oiseau was successfully created.' }
        format.json { render :show, status: :created, location: @oiseau }
      else
        format.html { render :new }
        format.json { render json: @oiseau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oiseaus/1
  # PATCH/PUT /oiseaus/1.json
  def update
    respond_to do |format|
      if @oiseau.update(oiseau_params)
        format.html { redirect_to @oiseau, notice: 'Oiseau was successfully updated.' }
        format.json { render :show, status: :ok, location: @oiseau }
      else
        format.html { render :edit }
        format.json { render json: @oiseau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oiseaus/1
  # DELETE /oiseaus/1.json
  def destroy
    @oiseau.destroy
    respond_to do |format|
      format.html { redirect_to oiseaus_url, notice: 'Oiseau was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oiseau
      @oiseau = Oiseau.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oiseau_params
      params.require(:oiseau).permit(:nom, :race, :age)
    end
end
