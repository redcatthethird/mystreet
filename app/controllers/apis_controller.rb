class ApisController < ApplicationController
  before_filter :parse_request, :authenticate_user_from_token!
  skip_before_action :verify_authenticity_token
  @auth = false
  public 
  def purchase
    unless @auth
      render nothing: true, status: :unauthorized
      return
    end
    
    begin
      acknowledgePurchase
      render json: {message: 'Success'}
    rescue => e
      render json: {message: "#{e.message}"}
    end

  end
  private
  def authenticate_user_from_token!
    if !@json['api_token']
      render nothing: true, status: :unauthorized
    else
      # if Devise.secure_compare("42", @json['api_token'])
      if @json['api_token'] == "42"
        @auth = true
      end
    end
  end

  def parse_request
    begin
      @json = JSON.parse(request.body.read)
    rescue
      render json: {message: "Malformed JSON"}
    end
  end

  def acknowledgePurchase
    begin
      customerId = @json['customer']
      quantity = @json['quantity']
    rescue
      raise "Malformed JSON request: customer and quantity need to be supplied"
    end

    begin
      product = Product.find(params[:item])
    rescue ActiveRecord::RecordNotFound
      raise "A product with this ID does not exist"
    # else # Might be other exceptions!
    #   raise "Malformed JSON request: quantity must be a number"
    end

    begin
      customer = Customer.find(customerId)
    rescue ActiveRecord::RecordNotFound
      raise "A customer with this ID does not exist"
    end

    if product.quantity < quantity then
      raise "Out of stock"
    end
    true
    # Need to actually alter the database here
  end

end
