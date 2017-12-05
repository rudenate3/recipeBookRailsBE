class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: @recipes
  end

  # GET /recipes/1
  def show
    render json: @recipe
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe[:user_id] = current_user.id
    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.user_id == current_user.id
      if @recipe.update(recipe_params)
        render json: @recipe
      else
        render json: @recipe.errors, status: :unprocessable_entity
      end
    else
      render status: :unauthorized
    end
  end

  # DELETE /recipes/1
  def destroy
    if current_user && @recipe.user_id == current_user.id
      @recipe.destroy
    else
      render status: :unauthorized
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:title, :description)
    end
end
