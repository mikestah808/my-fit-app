class Exercise < ActiveRecord::Base
    belongs_to :workouts
    belongs_to :users
end