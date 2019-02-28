class SpecialitiesController < ApplicationController
  before_action :authenticate_teacher!, only: [:my_courses, :new, :create]
  # vérifier si new et create sont nécessaire dans le before_action

  def my_courses
    # if current_user.id == teacher.id
    #   @specialities = Specialty.select {|speciality| current_user.id == teacher.id}
  end

  def index
    @specialities = Speciality.where(params[:query])
  end

  def show
    @speciality = Speciality.find(params[:id])
    @chapters = Chapter.all
  end

  def new
    @speciality = Speciality.new
  end

  def create
    @speciality = Speciality.new(speciality_params)
    @speciality.teacher = current_teacher
    if @speciality.save
      redirect_to new_speciality_chapter_path(@speciality)
    else
      render :new
    end
  end

  private

  def speciality_params
    params.require(:speciality).permit(:title, :status)
  end
end
