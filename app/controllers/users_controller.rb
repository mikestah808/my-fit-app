class UsersController < ApplicationController

    # add routes here 

    get "/" do 
        message = "Hello World"
        message.to_json
    end

    # get all users 
  get '/users' do 
    user = User.all
    user.to_json
  end

    # get selected user, along with users exercises and workouts 
  get '/users/:id' do
    user = User.find(params[:id])
    # include associated exercises in the JSON response
    user.to_json(include: { exercises: { include: :workout } })
  end

    # create user
  post '/users' do 
    user = User.create(
      name: params[:name], 
      age: params[:age], 
      weight: params[:weight]
      )
    user.to_json
  end


    
end