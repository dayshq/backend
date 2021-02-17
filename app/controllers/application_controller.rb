require 'jwt'

class ApplicationController < ActionController::API
    @token = ""

    def authenticate
        if @token
            authenticate_or_request_with_http_token do |token, options|
                ActiveSupport::SecurityUtils.secure_compare(token, @token)
            end
        else
            render status: :forbidden
        end
    end
    
    def new_token
        @current_user = Person.find_by({email_id: params["email_id"]})
        @token = jwt.encode @person, nil, 'none'
        render json: {token: @token}
    end
end
