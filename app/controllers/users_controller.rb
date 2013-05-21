class UsersController < ApplicationController

  def new
    @user = User.new

  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"

    end
  end
  def add_point
      @user.entrycount = @user.entrycount+1
  end
  def inc
    self.increment!(:entrycount)
  end
end
