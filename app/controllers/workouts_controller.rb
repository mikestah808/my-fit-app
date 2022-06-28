class WorkoutsController < ApplicationController

    # add routes here
   
     # get all workouts 
  get "/workouts" do 
    workout = Workout.all
    workout.to_json
  end

  # get specific workout
  get "/workouts/:id" do 
    workout = Workout.find(params[:id])
    workout.to_json
  end

  post "/workouts" do 
    workout = Workout.create(
      title: params[:title],
      date: params[:date],
      level: params[:level]
    )
  end
    
end