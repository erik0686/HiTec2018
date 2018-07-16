class BuildingsController < ApplicationController
    def new
        building = Building.new
    end

    def create 
        @building = building.create(building_params)
    end

    private
        def student_params
            params.require(:student).permit(:name, :last_name, :career, :vegan, :email, :register_id)
        end
    end
end