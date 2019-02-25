class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?

	rescue_from CanCan::AccessDenied do |exception|

		redirect_to main_app.root_path, flash: {error: "You are not authorized to access this page!"}
	end

	def after_sign_in_path_for(resource)
		rails_admin_path
	end

  protected
    def configure_permitted_parameters
       devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :age, :salary, :instructor, :student])
			 devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :age, :salary, :instructor, :student])
    end
end
