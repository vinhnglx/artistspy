class ApplicationController < ActionController::API
  before_action :check_header

  # Public: Display the error with wrong URL
  #
  # Example
  #
  #   get('/api2/23482039/23209')
  #   # => { errors: [ { status: 400, title: 'Bad Request' } ] }
  #
  # Returns the JSON error message
  def routing_error
    render json: {
      errors: [
        {
          status: 400,
          title: 'Bad Request'
        }
      ]
    }, status: 400
  end

  private

  # Private: Check header content-type
  #
  # Returns not_acceptable status
  def check_header
    if ['POST', 'PUT', 'PATCH'].include? request.method
      head :not_acceptable and return unless request.content_type == 'application/vnd.api+json'
    end
  end

  # Private: Render the error
  #
  # Returns the JSON error and status
  def render_error(resource, status)
    render json: resource, status: status, adapter: :json_api, serializer: ActiveModel::Serializer::ErrorSerializer
  end
end
