class ColorsController < ApplicationController
  def new
    @color = Color.new
  end

  def create
    @color = Color.new(colors_params)
    if @color.save
      redirect_to colors_path
    else
      render 'new'
    end
  end

  def agregar
    name = params[:name]
    color = Color.new(name:name)
    color.save
    create_buildings_of_color(color)
  end

  def edit
    @color = Color.find(params[:id])
  end

  def update
    @color = Color.find(params[:id])
    if @color.update(colors_params)
      redirect_to colors_path
    else
      render 'edit'
    end
  end

  def destroy
    @color = Color.find(params[:color_id])
    @color.destroy
  end

  def index
    @colors = Color.all
  end

  private
    def colors_params
      params.require(:color).permit(:name)
    end

    def create_buildings_of_color(color)
      Building.pluck(:name).uniq.each do |building|
        Building.create(name: building, color_id: color.id)
      end
    end
end
