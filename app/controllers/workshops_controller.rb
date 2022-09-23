class WorkshopsController < ApplicationController
    def index
        @workshops = Workshop.all
    end
    
    def show
        @workshops = Workshop.find(params[:id])
    end   

end    