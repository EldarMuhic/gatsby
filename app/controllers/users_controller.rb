class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.email = params[:email]
    @user.name = params[:name]
    @user.save!
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      return @user
    else
      return 'fail'
    end
  end

  def show_all
     user_all = User.all

     render :json => user_all, status: 200
  end

  def update_password
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      @user.password = params[:newPassword]
      render :json => "updated password", status: 204
    else
      return 'fail'
    end
  end

end
