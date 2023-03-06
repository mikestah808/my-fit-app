class WorkoutsController < ApplicationController
   
  get "/workouts" do 
    workout = Workout.all
    workout.to_json(include: :exercises)
  end

  get "/workouts/:id" do 
    workout = Workout.find_by(id: params[:id])
    if workout
      workout.to_json(include: :exercises)
    else 
      "404 - Workout not found" 
    end
  end

  post "/workouts" do 
    workout = Workout.create(
      title: params[:title],
      level: params[:level]
    )
    workout.to_json
  end

  delete "/workouts/:id" do 
    workout = Workout.find_by(id: params[:id])
    workout.destroy
  end

  patch "/workouts/:id" do 
    workout = Workout.find_by(id: params[:id])
    workout.update(
      title: params[:title],
      level: params[:level]
    )
      workout.to_json
    end  

end