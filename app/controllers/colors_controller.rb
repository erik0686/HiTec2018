class ColorsController < ApplicationController
    def new
        @color = Color.new
    end

    def create 
        @color = Color.create(color_params)
    end
end