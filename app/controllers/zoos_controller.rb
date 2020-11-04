class ZoosController < ApplicationController

    def index
        if params[:sort]
            @zoos = Zoo.all.sort_by {|z| z.name}
        else
            @zoos = Zoo.all
        end
    end

    def show
        @zoo = Zoo.find(params[:id])
    end

end
