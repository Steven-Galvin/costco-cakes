class PagesController < ApplicationController
  before_action only: [:list_orders] do
    flash[:notice] = "Employee Access Only" unless is_employee
    redirect_to root_path unless is_employee
  end

  def home
  end

  def all_orders
    @orders = CakeOrder.where(done: false).order(:pick_up_date).order(:pick_up_time)
    @completedOrders = CakeOrder.where(done: true).order(:pick_up_date).order(:pick_up_time)
  end

  def orders
    @orders = CakeOrder.where(user_id: current_user.id, done: false).order(:pick_up_date).order(:pick_up_time)
    @completedOrders = CakeOrder.where(user_id: current_user.id, done: true).order(:pick_up_date).order(:pick_up_time)
  end
end
