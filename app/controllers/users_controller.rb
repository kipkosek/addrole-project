class UsersController < ApplicationController
  # https://github.com/CanCanCommunity/cancancan/wiki/authorizing-controller-actions
  # load_and_authorize_resource only: [:update]
  skip_authorization_check only: [:analytics_alias]

  def analytics_alias
    # view file has JS that will identify the anonymous user through segment
    # after registration via "after devise registration path"
  end

  # def update
  #   @user = User.find(params[:id])
  #   @user.assign_attributes(roles: :roles)
  #
  #   if @user.save
  #     flash[:notice] = "Role was changed."
  #   else
  #     flash.now[:alert] = "There was an error changing the role."
  #   end
  # end

end
