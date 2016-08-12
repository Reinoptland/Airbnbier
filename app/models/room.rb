class Room < ApplicationRecord
    has_many :bookings
    belongs_to :user
    belongs_to :location
    validates_presence_of :price, :name
    validates :price, numericality: { only_float: true }

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
