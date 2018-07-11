class CareersController < ApplicationController
    helper StudentsHelper

    def index
        career = params[:q]
        @careers = Student.search_career(career)
        respond_to do |format|
            format.json {render json: @careers.pluck(:career)}
        end
        
    end

end