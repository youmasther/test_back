class Api::V1::CategoriesController < ApplicationController
  def index
    categorie = Categorie.all.order(created_at: :desc)
    render json: categorie
  end

  def create
  end

  def show
  end

  def destroy
  end
end
