get '/users' do
  @users = User.all
end

get '/users/new' do
  if request.xhr?
    erb:'users/new', layout: false
  else
  erb :'users/new'
  end
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
