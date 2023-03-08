class RecipesController < ApplicationController

    def create
        user = User.find_by(id: session[:id])
    end

    def index 
        render json: Recipe.all
    end

    def create 
        recipe = Recipe.create!(recipe_params)
    end


    private

    def recipe_params 
        params.permit(:title, :instructions, :minutes_to_complete)
    end
    
end
