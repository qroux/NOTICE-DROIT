class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    @speciality = Speciality.new
  end

  def about
  end
end

