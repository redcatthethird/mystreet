class ApisController < ApplicationController
  #before_filter :parse_request, :authenticate_user_from_token!
  skip_before_action :verify_authenticity_token
  @auth = false

  private
  def authenticate_user_from_token!
    if !@json['api_token']
      render nothing: true, status: :unauthorized
    else
      if Devise.secure_compare("42", @json['api_token'])
        @auth = true
      end
    end
  end

  def parse_request
    @json = JSON.parse(request.body.read)
  end

  def purchase
    # render json: {message: 'Resource not found'}
    # render nothing: true        # 

  end

end
