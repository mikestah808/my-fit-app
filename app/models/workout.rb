class Workout < ActiveRecord::Base
    # Order matters!! you must place the first has_many that references the join table ABOVE the second has_many that goes through the table
    has_many :exercises
end