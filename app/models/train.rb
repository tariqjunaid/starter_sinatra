class Train < ActiveRecord::Base
    has_many :station_trains, dependent: :destroy
    has_many :stations, through: :station_trains
end