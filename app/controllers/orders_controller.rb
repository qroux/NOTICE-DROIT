class OrdersController < ApplicationController
  # def index
  #   @orders = Order.all
  # end

  # def show
  #   @order = Order.new()
  # end

  def new
    @order = Order.new(speciality_id: params[:speciality_id])
     session[:params_session] = {
                                  :speciality_id => params[:speciality_id]
                                }
                                # appeller sous forme de string
  end

  def create
    @order = Order.new
    @order.speciality_id = session[:params_session]["speciality_id"].to_i
    @order.student_id = current_student.id
    @order.status = "payed"
    if @order.save!
      redirect_to speciality_path(session[:params_session]["speciality_id"].to_i)
    else
      render :new
    end
  end
end
