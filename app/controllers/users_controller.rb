class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(secure_params)
    Rails.logger.info("DEBUG: Params is #{params.inspect}")
    if @user.save
      flash[:notice] = "使用者 #{@user.name} 已成功建立"
      redirect_to root_path
    else
      render 'new'
    end

  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
    def secure_params
      params.require(:user).permit(:name, :email, :password, :passowrd_confirmation)
    end
end
