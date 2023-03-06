class ExercisesController < ApplicationController

    # add routes here

  get "/exercises" do 
    exercise = Exercise.all
    exercise.to_json(include: [:workout])
  end

  get "/exercises/:id" do 
    exercise = Exercise.find(params[:id])
    exercise.to_json
  end

  post '/workouts/:workout_id/exercises' do 
      exercise = Exercise.create(
      name: params[:name],
      category: params[:category],
      sets: params[:sets],
      reps: params[:reps],
      workout_id: params[:workout_id]
      )
      exercise.to_json
  end


  delete '/exercises/:id' do
    exercise = Exercise.find_by(id: params[:id])
    exercise.destroy
  end

end