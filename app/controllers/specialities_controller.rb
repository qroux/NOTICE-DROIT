class SpecialitiesController < ApplicationController
  before_action :authenticate_teacher!, only: [:my_courses, :new, :create]
  # vérfier si new et create sont nécessaire dans le before_action




  def my_courses
    # if current_user.id == teacher.id
    #   @specialities = Specialty.select {|speciality| current_user.id == teacher.id}
  end







  def index
  end

  def show
  end

  def new
  end

  def create
  end
end
