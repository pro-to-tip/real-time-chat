class SessionsController < ApplicationController
  def create_user(request_data)
    User.create(name: request_data[:info][:name], username: request_data[:info][:nickname], image: request_data[:info][:image], id: request_data[:extra][:raw_info][:id])
  end

  def create
    request_data = request.env['omniauth.auth']
    return redirect_to index_url if ! request_data
    # Create a user 
    user_id = request_data[:extra][:raw_info][:id]
    user = User.find(id: user_id)
    user = create_user(request_data) if !user 
    # Log the user in
    login user    
    return redirect_to index_url
  end
end
