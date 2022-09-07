class Driver < ActiveRecord::Base
    has_many :trucks
    has_many :tasks, through: :trucks
end