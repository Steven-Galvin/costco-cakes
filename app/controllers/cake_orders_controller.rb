class CakeOrdersController < ApplicationController
  def index
    @cake_orders = CakeOrder.all
  end

  def show
    @cake_order = CakeOrder.find(params[:id])
  end

   def new
     @cake_order = CakeOrder.new
     @cake_designs = CakeDesign.all
     @default = CakeDesign.find_by(name: "Default")
   end

   def create
     @cake_order = CakeOrder.new(cake_order_params)
     if @cake_order.save
     flash[:notice] = "Cake order successfully added!"
       redirect_to  cake_order_path(@cake_order)
     else
       render :new
     end
   end

   def edit
     @cake_order = CakeOrder.find(params[:id])
   end

   def update
     @cake_order = CakeOrder.find(params[:id])
     if @cake_order.update(cake_order_params)
       flash[:notice] = "Cake order successfully updated!"
       redirect_to cake_order_path(@cake_order)
     else
       render :edit
     end
   end

   def destroy
     @cake_order = CakeOrder.find(params[:id])
     if @cake_order.destroy
       flash[:notice] = "Cake order successfully removed!"
       redirect_to cake_orders_path
     end
   end

  private
   def cake_order_params
     params.require(:cake_order).permit(:flavor)
   end
end
