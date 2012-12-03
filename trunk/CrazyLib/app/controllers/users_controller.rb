class UsersController < ApplicationController
  layout 'admin', :only =>[:index]
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def add_to_moderate
    @user = User.find(params[:id])
    if(@user)
    @user.group = 3;
    @user.save
    redirect_to "/admin/show_users/"
    return
    end
    redirecto_to "/admin"
    return
  end
  def remove_from_moderate
    @user = User.find(params[:id])
    if(@user)
    @user.group = 1;
    @user.save
    redirect_to "/admin/show_users/"
    return
    end
    redirecto_to "/admin"
    return
  end
end