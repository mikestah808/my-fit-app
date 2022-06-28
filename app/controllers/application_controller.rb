class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project! Thanks!" }.to_json
  end

  get "/users" do 
    user = User.all
    user.to_json
  end

  get "/exercises" do 
    exercise = Exercise.all
    exercise.to_json
  end

  get "/workouts" do 
    workout = Workout.all
    workout.to_json
  end


end
