class RegistrationsController < DeviseTokenAuth::RegistrationsController
  def render_create_success
    render json: resource_data
  end
end
