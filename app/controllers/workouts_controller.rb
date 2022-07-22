class WorkoutsController < ApplicationController

  # WORKOUT CONTROLLER FULL CRUD 

    # add routes here
   
     # get all workouts 
  get "/workouts" do 
    workout = Workout.all
    workout.to_json(include: :exercises)
  end

  # get specific workout

  get "/workouts/:id" do 
    workout = Workout.find_by(id: params[:id])
    if workout
      workout.to_json(include: :exercises)
    else 
      "404 - Workout not found" 
    end
  end

  # get "/workouts/:id/exercises" do
  #   workout = Workout.find_by(id: params[:id])
  #   workout.to_json(include: :exercises)
  # end

  post "/workouts" do 
    workout = Workout.create(
      title: params[:title],
      level: params[:level]
    )
    workout.to_json
  end

  delete "/workouts/:id" do 
    # find_by returns null OR the found object
    workout = Workout.find_by(id: params[:id])
    workout.destroy
  end

  # create a patch request which will modify the original form input values
    patch "/workouts/:id" do 
      workout = Workout.find_by(id: params[:id])
      workout.update(
        title: params[:title],
        level: params[:level]
      )
      workout.to_json
    end  

end