class BuildingsController < ApplicationController
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to buildings_path
    else
      render 'new'
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def agregar
    name = params[:name]
    Color.all.each do |color|
      building = Building.new(name:name, color_id: color.id)
      building.save
    end
  end

  def update
    @building = Building.find(params[:id])
    if @building.update(building_params)
      redirect_to buildings_path
    else
      render 'edit'
    end
  end

  def destroy
    Building.all.each do |building|
      if building.name == params[:name]
        building.destroy
      end
    end
  end

  def index
    @buildings = Building.all
  end

  private
    def building_params
        params.require(:building).permit(:name, :color_id)
    end
end
