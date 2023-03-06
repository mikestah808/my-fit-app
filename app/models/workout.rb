class Workout < ActiveRecord::Base
    has_many :exercises, dependent: :destroy

    def exercise_count
        self.exercises.count
    end

    def all_exercises
      self.exercises.map do |exercise|
        exercise
      end
    end

    def all_exercise_names
        self.exercises.map do |exercise|
          exercise.name
        end
      end

end