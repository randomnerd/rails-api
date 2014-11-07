class SessionsController < DeviseTokenAuth::SessionsController
  def create
    params[:email] ||= params[:username]
    super
  end
end
