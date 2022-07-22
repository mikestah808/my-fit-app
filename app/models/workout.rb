class Workout < ActiveRecord::Base
    # Order matters!! you must place the first has_many that references the join table ABOVE the second has_many that goes through the table
    # has_many keyword declaratively tells Rails that there is a connection between the two models (workout & exercises)
    has_many :exercises, dependent: :destroy
    # dependent: :destroy will delete ALL Exercises that are associated with the Workout
    # ex: DELETE Leg Workout will DELETE ALL Exercises

    def exercise_count
        #return the number of exercises associated with the workout
        self.exercises.count
    end

    def all_exercises
      self.exercises.map do |exercise|
        exercise
      end
    end

    def all_exercise_names
        # return an array of strings containing every musician's name
        self.exercises.map do |exercise|
          exercise.name
        end
      end

end