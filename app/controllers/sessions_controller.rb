class SessionsController < DeviseTokenAuth::SessionsController
  def render_create_success
    render json: resource_data
  end
end
