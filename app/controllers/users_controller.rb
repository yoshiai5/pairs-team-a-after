class UsersController < ApplicationController

  def show
    # 自分以外のプロフィールの閲覧を不可にする
    redirect_to root_path unless User.find(params[:id]) == current_user

    @user = User.find(params[:id])
    # @usersPage = User.page(params[:page]).per(1)
    # @users = User.all
    # @relationship = Relationship.new
    @image = UserImage.new
    @communities = current_user.communities.page(params[:page]).order("created_at DESC").per(12)
    @foot = current_user.comings.order("updated_at DESC").limit(4)
  end

end
