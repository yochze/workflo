class UsersController < ApplicationController
def index_with_json
    @users = User.where("name like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @users.map(&:attributes) }
    end
  end


end
