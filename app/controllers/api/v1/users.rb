module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults
#       doorkeeper_for :all

      resource :users do
        desc "Return all users",
        auth: { scopes: [] }
        get '', root: :users do
          logger.info "current_user: #{current_resource_owner.inspect}"
          User.all
        end

      end
    end
  end
end
