class ColorsController < ApplicationController
    def new
        @color = Color.new
    end

    def create 
        @color = Color.create(color_params)
    end

    private
    def color_params
        params.require(:student).permit(:name)
    end
end