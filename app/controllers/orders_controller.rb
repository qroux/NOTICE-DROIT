class OrdersController < ApplicationController
  before_action :authenticate_student!, only: [:show, :new, :create]

  def courses
    @orders = Order.all
    @my_orders = @orders.where(student_id: current_student.id)
  end

  def show
    @order = current_student.orders.where(status: 'payé').find(params[:id])
  end

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
    @order.status = "à régler"
    @order.amount = @order.speciality.price
    if @order.save!
      # redirect_to speciality_path(session[:params_session]["speciality_id"].to_i)   path vers la spécialité achetée
      redirect_to new_order_payment_path(@order)

    else
      render :new
    end
  end
end

