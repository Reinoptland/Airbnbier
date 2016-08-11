class Booking < ApplicationRecord
    belongs_to :room
    belongs_to :user

    validates_presence_of :start_date, :end_date


    def ranger
        a = start_date.strftime("%Y-%m-%d")
        b = end_date.strftime("%Y-%m-%d")
        (a..b).map { |date| date }
    end
end
