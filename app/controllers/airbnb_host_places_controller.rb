class AirbnbHostPlacesController < ApplicationController
  before_action :set_airbnb_host_place, only: [:show, :edit, :update, :destroy]

  # GET /airbnb_host_places
  # GET /airbnb_host_places.json
  def index
    @airbnb_host_places = AirbnbHostPlace.all
  end

  # GET /airbnb_host_places/1
  # GET /airbnb_host_places/1.json
  def show
  end

  # GET /airbnb_host_places/new
  def new
    @airbnb_host_place = AirbnbHostPlace.new
  end

  # GET /airbnb_host_places/1/edit
  def edit
  end

  # POST /airbnb_host_places
  # POST /airbnb_host_places.json
  def create
    @airbnb_host_place = AirbnbHostPlace.new(airbnb_host_place_params)

    respond_to do |format|
      if @airbnb_host_place.save
        format.html { redirect_to @airbnb_host_place, notice: 'Airbnb host place was successfully created.' }
        format.json { render :show, status: :created, location: @airbnb_host_place }
      else
        format.html { render :new }
        format.json { render json: @airbnb_host_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airbnb_host_places/1
  # PATCH/PUT /airbnb_host_places/1.json
  def update
    respond_to do |format|
      if @airbnb_host_place.update(airbnb_host_place_params)
        format.html { redirect_to @airbnb_host_place, notice: 'Airbnb host place was successfully updated.' }
        format.json { render :show, status: :ok, location: @airbnb_host_place }
      else
        format.html { render :edit }
        format.json { render json: @airbnb_host_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airbnb_host_places/1
  # DELETE /airbnb_host_places/1.json
  def destroy
    @airbnb_host_place.destroy
    respond_to do |format|
      format.html { redirect_to airbnb_host_places_url, notice: 'Airbnb host place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airbnb_host_place
      @airbnb_host_place = AirbnbHostPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airbnb_host_place_params
      params.require(:airbnb_host_place).permit(:name, :address, :price, :place_type, :no_of_guests, :latitude, :longitude)
    end
end
