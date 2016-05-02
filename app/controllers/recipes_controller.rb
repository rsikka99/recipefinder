class RecipesController < ApplicationController
	require 'pp'
  def index
  	@searchTerm = params[:search] || "chocolate"
pp "searchterm in controller is #{@searchTerm}"
 	@recipes = Recipe.for(@searchTerm)
  end
end
