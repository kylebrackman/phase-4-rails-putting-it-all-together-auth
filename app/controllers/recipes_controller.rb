class RecipesController < ApplicationController

    def create
        user = User.find_by(id: session[:id])
    end

    def index 
        render json: Recipe.all
    end

    def create 
        recipe = @current_user.recipes.create!(recipe_params)
        render json: recipe, status: :created
    end


    private

    def recipe_params 
        params.permit(:title, :instructions, :minutes_to_complete, :user)
    end

end
