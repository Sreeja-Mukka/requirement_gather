class DetailsController < ApplicationController

    def index
        @details = Detail.all
    end

    def new
        @detail = Detail.new
    end

    def create
        @detail = Detail.new(details_params)
        respond_to do |format|
            if @detail.save
              format.html { redirect_to details_path, notice: 'Request successfully posted.' }
              format.json { render :show, status: :created, location: @detail }
            else
              format.html { render :new }
              format.json { render json: @detail.errors, status: :unprocessable_entity }
            end
          end
    end
    
    def show
        @detail=Detail.find(params[:id])
    end

    private
    def details_params
        params.require(:detail).permit(:department_id ,:title ,:description ,:objective ,:analytics ,:expected_deadline)
    end
end