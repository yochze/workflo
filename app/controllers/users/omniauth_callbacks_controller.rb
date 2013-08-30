class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github
    omniauth = request.env["omniauth.auth"]
    @user = User.find_by_github_uid(omniauth["uid"]) || User.create_from_omniauth(omniauth)
    # Hook into your own authentication system!
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
    else
      redirect_to user_account_edit_path
    end
  end

  # def facebook
  #   # You need to implement the method below in your model (e.g. app/models/user.rb)
  #   @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

  #   if @user.persisted?
  #     flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
  #     sign_in_and_redirect @user, :event => :authentication
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end

  def failure
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    puts "error"
    # redirect_to root_path
  end
  
end