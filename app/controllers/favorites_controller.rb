class FavoritesController < ApplicationController
before_action :authenticate_student!, only: [:index]
  # ajouter :show si besoin. à vérfier si bug


  def index
  end

  def new
  end

  def create
  end

  def delete
  end
end
