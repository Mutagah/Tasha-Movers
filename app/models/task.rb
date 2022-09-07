class Task < ActiveRecord::Base
    has_many :trucks
    has_many :drivers, through: :vehicles
end