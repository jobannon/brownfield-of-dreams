class UsersController < ApplicationController
  def show
    render locals: {
      user_find: UserDashboardFacade.new(current_user)
    }
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      session[:user_id] = user.id
      UserNotifierMailer.activate(current_user, user.email).deliver_now
      flash[:success] = "This account has not yet been activated. Please check your email."
      redirect_to dashboard_path
    else
      flash[:error] = 'Username already exists'
      redirect_to "/register" 
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end

end
