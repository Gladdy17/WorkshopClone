class Workshop < ApplicationRecord
    validates :name, :description, presence: true
    validates :start_date, :end_date, :start_time, :end_time, presence: true
    validates :total_seats, :registration_fee, presence: true, numericality: true
    validates :end_date, comparison: { greater_than: :start_date, message: 'cannot be before start date' }

    def total_duration
        "From #{start_date} to {end_date}"
    end 
    
    def daily_workshop_hours 
        "#{((start_time.to_time - end_time.to_time)/1.hours).abs} hours"
    end

    def dails_duration
        "EveryDay #{start_time} to #{end_time} (#{daily_workshop_hours})"

    end    

end
