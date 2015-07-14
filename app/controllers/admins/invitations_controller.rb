class Admins::InvitationsController < Devise::InvitationsController


  def create
    # binding.pry
    if params['account'] == 'student'
      Student.invite!(email: params['admin']['email'])
      flash[:notice] = 'Student Invited!'
      redirect_to root_path
    elsif params['account'] == 'teacher'
      Teacher.invite!(email: params['admin']['email'])
      flash[:notice] = 'Teacher Invited!'
      redirect_to root_path
    else
      flash[:notice] = 'Something went wrong'
      redirect_to root_path
    end
  end
end
