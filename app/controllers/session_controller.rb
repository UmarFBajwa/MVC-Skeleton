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
  session.clear
  redirect '/'
end

get '/register' do
  erb :'users/new'
end

post '/register' do
  user = User.new(params[:user])
  if user.save
    redirect '/'
  else
    erb :'users/new'
  end
end

