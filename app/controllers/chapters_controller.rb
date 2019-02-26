class ChaptersController < ApplicationController
  before_action :authenticate_student!, only: [:show]

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
