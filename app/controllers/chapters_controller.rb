class ChaptersController < ApplicationController
  before_action :authenticate_student!, only: [:show]
  def show
    @chapter = Chapter.find(params[:id])
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = chapter.new(chapter_params)
    if chapter.save
      redirect_to new_chapter_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
end
