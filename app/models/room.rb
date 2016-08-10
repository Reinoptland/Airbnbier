class Room < ApplicationRecord
  has_many :bookings

    def self.order_by_price_desc
        order(price: :desc)
    end

    def self.order_by_price_asc
        order(price: :asc)
    end
    
    def taken_dates
        dates = []
        self.bookings.each { |booking|
         bookings = booking.ranger
        dates << bookings
        }
        dates.flatten
    end
    
end
