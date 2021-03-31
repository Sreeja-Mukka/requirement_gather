class DetailsController < ApplicationController
    before_action :set_detail, only: [:edit, :update]
    def index
        @details = Detail.all
        @departments = Department.all
    end

    def new
        @detail = Detail.new
    end

    def edit
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

    def update
        respond_to do |format|
            if @detail.update(status_params)
                format.html { redirect_to details_path }
                format.json { render :show, status: :ok, location: @detail }
            else
                format.html { render :edit }
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
    def status_params
        params.require(:detail).permit(:status)
    end
    def set_detail
        @detail = Detail.find(params[:id])
    end
end