class ExercisesController < ApplicationController

    # add routes here

        # get all exercises
  get "/exercises" do 
    exercise = Exercise.all
    exercise.to_json(include: [:workout])
  end

  get "/exercises/:id" do 
    exercise = Exercise.find(params[:id])
    exercise.to_json
  end

  post '/exercises' do 
    exercise = Exercise.create(
      name: params[:name],
      primary_muscle: params[:primary_muscle],
      category: params[:category],
      sets: params[:sets],
      reps: params[:reps],
      workout_id: params[:workout_id]
      )
    exercise.to_json
  end

  # edit/update specific exercise
  patch '/exercises/:id' do
    exercise = Exercise.find(params[:id])
    exercise.update(
      name: params[:name],
      primary_muscle: params[:primary_muscle],
      category: params[:category],
      sets: params[:sets],
      reps: params[:reps],
      workout_id: params[:workout_id]
    )
    exercise.to_json
  end

  delete '/exercises/:id' do
    # find the exercise using the ID
    exercise = Exercise.find_by(id: params[:id])
    # delete the exercise
    exercise.destroy
    # send a response with the deleted exercise as JSON
  end

end