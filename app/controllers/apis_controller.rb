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
    if acknowledgePurchase then
      render json: {message: 'Success'}
    else
      render json: {message: 'Out of stock'}
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
    @json = JSON.parse(request.body.read)
  end

  def acknowledgePurchase
    true
  end

end
