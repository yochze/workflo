class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github
    omniauth = request.env["omniauth.auth"]
    @user = User.find_by_github_uid(omniauth["uid"]) || User.create_from_omniauth(omniauth)
    # Hook into your own authentication system!
    sign_in_and_redirect @user, :event => :authentication
    # This would normally be configured to return to the previous path 
    redirect root_path, :notice => "Welcome, #{@user.name}"  
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

  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    # Or alternatively,
    # raise ActionController::RoutingError.new('Not Found')
  end

  def failure
    puts "error"
    redirect_to root_path
  end

end
