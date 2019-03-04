class OrdersController < ApplicationController
  before_action :authenticate_student!, only: [:new, :create]
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
    @speciality = Speciality.find(params[:speciality_id])
    @orders = @speciality.orders
    @my_order = @orders.where(student_id: current_student.id)
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
