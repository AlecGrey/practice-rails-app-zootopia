class ExhibitsController < ApplicationController

    before_action :find_exhibit, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @exhibit = Exhibit.new
    end

    def create
        @exhibit = Exhibit.new(exhibit_params)
        if @exhibit.save
            redirect_to @exhibit
        else
            render :new
        end
    end

    def edit
    end
    
    def update
        if @exhibit.update(exhibit_params)
            redirect_to @exhibit
        else
            render :edit
        end
    end

    def destroy
        @zoo = @exhibit.zoo
        @exhibit.destroy
        redirect_to @zoo
    end
    
    private
    
    def find_exhibit
        @exhibit = Exhibit.find(params[:id])
    end

    def exhibit_params
        params.require(:exhibit).permit(:biome, :zoo_id, :animal_id, :quantity_of_animal)
    end

end
