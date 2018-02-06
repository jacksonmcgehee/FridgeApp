class FridgesController < ApplicationController

    def index
        @fridges = Fridge.all
    end

    def new
        @fridges = Fridge.new
    end

    def create
        @fridges =Fridge.new(fridges_params)
        if @fridges.save
            redirect_to fridges_url
        else
            redirect_to fridges_food_new_url
        end
    end

    private
    def fridges_params
        params.require(:fridge).permit(:location, :brand, :size, :has_food, :has_drink)
    end

end