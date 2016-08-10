class Booking < ApplicationRecord
    belongs_to :room
    
    
    def ranger
        a = start_date.strftime("%Y-%m-%d")
        b = end_date.strftime("%Y-%m-%d")
        (a..b).map { |date| date }
    end
end
