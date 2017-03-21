class ApplicationController < ActionController::API
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
end
