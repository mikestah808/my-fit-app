class Exercise < ActiveRecord::Base
    belongs_to :workout

    # return the workout the exercise belongs to 
    def get_workout
        self.workout
    end

    # return the title of the workout the exercise belongs to 
    def get_workout_title
        self.workout.title
    end

end