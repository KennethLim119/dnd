class AirsController < ApplicationController
  before_action :set_air, only: [:show, :edit, :update, :destroy]

  # GET /airs
  # GET /airs.json
  def index
    @airs = Air.all
  end

  # GET /airs/1
  # GET /airs/1.json
  def show
  end

  # GET /airs/new
  def new
    @air = Air.new
  end

  # GET /airs/1/edit
  def edit
  end

  # POST /airs
  # POST /airs.json
  def create
    @air = Air.new(air_params)

    respond_to do |format|
      if @air.save
        format.html { redirect_to @air, notice: 'Air was successfully created.' }
        format.json { render :show, status: :created, location: @air }
      else
        format.html { render :new }
        format.json { render json: @air.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airs/1
  # PATCH/PUT /airs/1.json
  def update
    respond_to do |format|
      if @air.update(air_params)
        format.html { redirect_to @air, notice: 'Air was successfully updated.' }
        format.json { render :show, status: :ok, location: @air }
      else
        format.html { render :edit }
        format.json { render json: @air.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airs/1
  # DELETE /airs/1.json
  def destroy
    @air.destroy
    respond_to do |format|
      format.html { redirect_to airs_url, notice: 'Air was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air
      @air = Air.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_params
      params.require(:air).permit(:image, :room_id, :room_name, :location, :description, :price, :accomodation, :bathrooms, :bedrooms, :beds, :room_type, :is_TV, :is_Air_Conditioning, :is_Laptop_friendly_workspace, :is_Washer, :is_Kitchen, :is_WiFi, :is_Family_friendly, :is_Pool, :is_Gym, :is_Wheelchair_accessible, :is_Pets_allowed, :house_rules)
    end
end
