module API
  class Base < Grape::API
    rescue_from WineBouncer::Errors::OAuthUnauthorizedError, WineBouncer::Errors::OAuthForbiddenError
    use ::WineBouncer::OAuth2
    prefix 'api'
    mount API::V1::Base
  end
end
