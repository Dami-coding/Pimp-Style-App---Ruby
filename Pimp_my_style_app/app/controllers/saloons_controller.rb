class SaloonsController < ApplicationController
  before_action :set_saloon, only: [:show, :edit, :update, :destroy]

  # GET /saloons
  # GET /saloons.json
  def index
    @search = Saloons.search(param[:q])
    @saloons = @search.result
    @saloons = Saloon.all
  end

  # GET /saloons/1
  # GET /saloons/1.json
  def show
   
  end

  # GET /saloons/new
  def new
    @saloon = Saloon.new
  end

  # GET /saloons/1/edit
  def edit
  end

  # POST /saloons
  # POST /saloons.json
  def create
    @saloon = Saloon.new(saloon_params)

    respond_to do |format|
      if @saloon.save
        format.html { redirect_to @saloon, notice: 'Saloon was successfully created.' }
        format.json { render :show, status: :created, location: @saloon }
      else
        format.html { render :new }
        format.json { render json: @saloon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saloons/1
  # PATCH/PUT /saloons/1.json
  def update
    respond_to do |format|
      if @saloon.update(saloon_params)
        format.html { redirect_to @saloon, notice: 'Saloon was successfully updated.' }
        format.json { render :show, status: :ok, location: @saloon }
      else
        format.html { render :edit }
        format.json { render json: @saloon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saloons/1
  # DELETE /saloons/1.json
  def destroy
    @saloon.destroy
    respond_to do |format|
      format.html { redirect_to saloons_url, notice: 'Saloon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @saloon = Saloon.find(params[:id])
    @saloon.upvote_by current_user
    redirect_to @saloon
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saloon
      @saloon = Saloon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saloon_params
      params.require(:saloon).permit(:name, :image, :description, :tel_number, :price)
    end
end
