class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  include DeviseTokenAuth::Concerns::SetUserByToken
end
