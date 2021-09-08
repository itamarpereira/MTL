class AreasController < ApplicationController
  before_action :set_area, only: [:show] # [:edit, :update, :destroy]
  before_action :set_areas, only: [:index, :show]

  # GET /areas
  def index
  end

  # GET /areas/1
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_areas
    @areas = Area.all
  end

  def set_area
    @area = Area.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def area_params
    params.require(:area).permit(:name, :description)
  end
end
