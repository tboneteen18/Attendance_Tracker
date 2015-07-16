class Students::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]


  protected
  def after_sign_up_path_for(resource)
    student_loged_in_path(@current_user.id)
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
