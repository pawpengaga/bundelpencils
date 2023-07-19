class ApplicationController < ActionController::Base
    # before_action :configure_permitted_parameters, if: :devise_controller? #importante

    protected

    def after_sign_in_path_path_for(resource)
        root_path
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :pfp, :phone, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :pfp, :phone, :role])
    end

    def authorize_request(kind = nil)
        unless current_client == false || (current_client && kind.include?(current_client.role))
          redirect_to articles_path, notice: "No tiene permiso para hacer esto. Consulte con el administrador."
        end
    end

end
