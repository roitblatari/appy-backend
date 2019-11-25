class Api::V1::DeedsController < ApplicationController
  before_action :set_deed, only: [:show, :update, :destroy]

  # GET /deeds
  def index
    # @deeds = Deed.all
    @deeds = Deed.display_deeds
  #  binding.pry
    # @current_user_deeds = @deeds.find_all do |d|
    #   d.giver_id.to_i == current_user.id.to_i
    # end
    @current_user_deeds = @deeds.where giver_id: current_user.id.to_s
   
    json_deeds = DeedSerializer.new(@current_user_deeds).serialized_json
    #  binding.pry
    render json: json_deeds,  status: 200
  end

  # GET /deeds/1
  def show
    # render json: @deed
    @deed = Deed.find(params[:id])
    # render json: @deed, status: 200
    json_deed = DeedSerializer.new(@deed).serialized_json
    render json: json_deed
  end

  # POST /deeds
  def create

     @deed = Deed.new(deed_params)
     @deed.receiver_id = current_user.id.to_i
#  binding.pry
    if @deed.save 

      render json: {notice: "success"}, status: :ok
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
    deedId = @deed.id
    @deed.destroy
    render json: deedId
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deed
      @deed = Deed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deed_params
      params.require(:deed).permit(:title, :giver_id, :receiver_id, :content, :image_url)
    end
end
