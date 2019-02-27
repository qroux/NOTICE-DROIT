class ChaptersController < ApplicationController
  before_action :authenticate_student!, only: [:show]
  def show
    @chapter = Chapter.find(params[:id])
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
  end

  def update
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :content)
  end
end
