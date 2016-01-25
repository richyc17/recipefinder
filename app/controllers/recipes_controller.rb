class RecipesController < ApplicationController
  def index
  end

  def search
    if(params[:q].nil? || params[:q].empty?)
      @search_term = 'beef'
    else
      @search_term=params[:q].strip
    end
    @recipes = Recipes.search(@search_term)
  end
end
