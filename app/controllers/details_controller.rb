class DetailsController < ActionController::Base
    def index
        @details = Detail.all
    end

    def new
        @detail = Detail.new
    end

    def create
    end
    
    def show
    end
end