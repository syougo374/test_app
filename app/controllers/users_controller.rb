class UsersController < ApplicationController
  skip_before_action :login_required, only:[ :new, :create ]
  def show
  end

  def edit
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      # binding.irb
      redirect_to blogs_path, notice: '良くやった'
    else
      flash.now[:alert] = "失敗"
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
