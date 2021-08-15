class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create ]
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to blogs_path
    else
      flash.now[:alert] = "ログイン失敗"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to new_user_path, notice: 'ログアウトしやした'
  end
end
