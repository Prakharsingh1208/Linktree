class UserDetailsController < ApplicationController
  def show
    @user_detail = Current.user.user_detail
  end

  def edit
    @user_detail = Current.user.build_user_detail
  end

  def update
    if Current.user.build_user_detail(set_param).save
      redirect_to trees_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @user_detail = Current.user.build_user_detail
  end

  def create
    if Current.user.build_user_detail(set_param).save
      redirect_to user_detail_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def set_param
    params.permit(:user_name, :bio, :profile_image)
  end

end