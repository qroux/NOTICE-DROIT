class FichesController < ApplicationController
  before_action :authenticate_student!, only: [:show]

  def show
    @fiche = Fiche.find(params[:id])

    @speciality = Speciality.find(params[:speciality_id])
    @orders = @speciality.orders
    @order = @orders.find_by(student_id: current_student.id)
  end

  def new
    @fiche = Fiche.new
    @speciality = Speciality.find(params[:speciality_id])
    @chapter = Chapter.find(params[:chapter_id])
  end

  def create

    #@speciality = Speciality.find(params[:speciality_id])
    @chapter = Chapter.find(params[:chapter_id])
    #@fiche = Fiche.new(fiche_params)
    #@fiche.chapter = @chapter
    #@fiche.chapter.speciality = @speciality
    #@fiche.save
    @chapter.fiches.create(fiche_params)
    if @chapter.fiches.last.persisted?
      redirect_to my_courses_path
    else
      render :new
    end
  end

  def edit
    @fiche = Fiche.find(params[:id])
  end

  def update
    @fiche = Fiche.find(params[:id])
    @fiche.update(fiche_params)
    if @fiche.save
      redirect_to my_courses_path
    else
      render :edit
    end
  end

  private

  def fiche_params
    params.require(:fiche).permit(:title, :content)
  end
end
