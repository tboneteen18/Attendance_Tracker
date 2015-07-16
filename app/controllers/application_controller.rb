class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  protected

  def after_sign_in_path_for(resource)
    if current_admin
      admin_logged_in_index_path
    elsif current_teacher
      teacher_logged_in_index_path
    elsif current_student
      student_logged_in_index_path
    else
      flash[:notice] = 'Something went terribly wrong'
      redirect_to root_path
    end
  end

end
