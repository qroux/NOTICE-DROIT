class PagesController < ApplicationController


  def home
    @speciality = Speciality.new
  end

  def about
  end
end

