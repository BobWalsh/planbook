class Auth0Controller < ApplicationController
  # This stores all the user information that came from Auth0
  # and the IdP
  def callback
    session[:userinfo] = request.env['omniauth.auth']
    puts "GOT TO CALLBACK"
    # Redirect to the URL you want after successful auth
    redirect_to '/dashboard'
  end

  # This handles authentication failures
  def failure
    @error_type = request.params['error_type']
    @error_msg = request.params['error_msg']
    puts "---"
    puts @error_type.inspect
    puts @error_msg.inspect
    puts "---"

    # TODO show a failure page or redirect to an error page
  end
end
