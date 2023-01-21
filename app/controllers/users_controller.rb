class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototype = Prototype.new
    @prototypes = @user.prototypes
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile, :occupation, :position)
  end
end