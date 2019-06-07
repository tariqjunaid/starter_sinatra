class Station < ActiveRecord::Base
    has_many :station_trains, dependent: :destroy
    has_many :trains, through: :station_trains

end