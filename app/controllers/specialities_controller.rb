class SpecialitiesController < ApplicationController
  def index
    @specialities = Speciality.where(params[:query])
  end

  def show
    @specialities = Speciality.find(params[:id])
  end

  def new
    @speciality = Speciality.new
  end

  def create
    @speciality = Speciality.new(speciality_params)
    if speciality.save
      redirect_to new_speciality_chapter_path
    else
      render :new
    end
  end

  private

  def speciality_params
    params.require(:speciality).permit(:title, :status)
  end
end
