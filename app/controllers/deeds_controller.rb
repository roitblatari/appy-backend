class DeedsController < ApplicationController
  before_action :set_deed, only: [:show, :update, :destroy]

  # GET /deeds
  def index
    @deeds = Deed.all

    render json: @deeds
  end

  # GET /deeds/1
  def show
    render json: @deed
  end

  # POST /deeds
  def create
    @deed = Deed.new(deed_params)

    if @deed.save
      render json: @deed, status: :created, location: @deed
    else
      render json: @deed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /deeds/1
  def update
    if @deed.update(deed_params)
      render json: @deed
    else
      render json: @deed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /deeds/1
  def destroy
    @deed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deed
      @deed = Deed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deed_params
      params.require(:deed).permit(:title, :user_giver_id, :user_receiver_id, :content, :image_url)
    end
end
