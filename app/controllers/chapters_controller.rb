class ChaptersController < ApplicationController
  before_action :authenticate_student!, only: [:show]
  def show
    @chapter = Chapter.find(params[:id])

    @speciality = Speciality.find(params[:speciality_id])
    @orders = @speciality.orders
    @order = @orders.where(student_id: current_student.id)
  end

  def new
    @chapter = Chapter.new
    @speciality = Speciality.find(params[:speciality_id])
  end

  def create
    @speciality = Speciality.find(params[:speciality_id])
    @chapter = Chapter.new(chapter_params)
    @chapter.speciality = @speciality
    if @chapter.save!
      redirect_to my_courses_path
    else
      render :new
    end
  end

  def edit
    @speciality = Speciality.find(params[:speciality_id])
    @chapter = Chapter.find(params[:id])
  end

  def update
      @chapter = Chapter.find(params[:id])
    @chapter.update(chapter_params)
    if @chapter.save
      redirect_to my_courses_path
    else
      render :edit
    end
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :content)
  end
end
