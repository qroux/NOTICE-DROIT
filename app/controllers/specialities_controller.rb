class SpecialitiesController < ApplicationController
  before_action :authenticate_teacher!, only: [:my_courses, :new, :create]
  before_action :authenticate_student!, only: [:show]
  # vérifier si new et create sont nécessaire dans le before_action

  def my_courses
    if current_user.id == current_teacher.id
      @specialities = current_teacher.specialities

      @chapters = []
      @specialities.each do |speciality|
        @chapters << speciality.chapters
      end

      @fiches = []
      @chapters.each do |speciality_chapters|
        speciality_chapters.each do |chapter|
          @fiches << chapter.fiches
        end
      end
    end
  end

  def index
    if params[:query].present?
      @specialities = Speciality.where("title ILIKE ?", params[:query])
    else
      @specialities = Speciality.all
    end
  end

  def show
    @speciality = Speciality.find(params[:id])
    @chapters = Chapter.all
    @orders = @speciality.orders
    @order = @orders.where(student_id: current_student.id)
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
