class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    sales = Sale.where customer_id: @customer.id
    @product_sales = []
    sales.each do |sale|
      psale = Hash.new
      psale[:product] = Product.find(sale.product_id)
      psale[:quantity] = sale.quantity
      @product_sales << psale
    end
  end
end
