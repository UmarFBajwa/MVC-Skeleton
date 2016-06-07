post '/login' do
  user = User.authenticate(params[:username], params[:password])
  if user
     login(user)
     redirect '/'
  else
    redirect '/'
  end
end

get '/logout' do
  session[:user_id] = nil
  current_user = nil
  redirect '/'
end



