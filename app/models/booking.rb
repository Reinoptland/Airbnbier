class Booking < ApplicationRecord
    belongs_to :room
    belongs_to :user

    validates_presence_of :start_date, :end_date
    validates_date :start_date, :on_or_after => Date.today
    validates_date :end_date, :after => :start_date

    validate :validate_available

    def validate_available
       overlap = self.room.bookings.where( "start_date BETWEEN ? AND ? OR end_date BETWEEN ? AND ?",
       start_date, end_date, start_date, end_date).count
       return if overlap == 0
       errors.add(:booking, ": You selected dates which are not available")
    end

    def ranger
        a = start_date.strftime("%Y-%m-%d")
        b = end_date.strftime("%Y-%m-%d")
        (a..b).map { |date| date }
    end

end
