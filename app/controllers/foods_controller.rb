class FoodsController < ApplicationController

    def index
        @foods = Food.all
    end

    def new
        @foods = Food.new
    end

    def create
        @foods = Food.new(foods_params)
        if @foods.save
            redirect_to fridges_url
        else
            redirect_to fridges_food_new_url
        end
    end

    private
    def foods_params
        params.require(:food).permit(:name, :weight, :is_vegan, :fridge_id)
    end

end