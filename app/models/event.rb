class Event < ApplicationRecord
    validates :start_date, presence: true
    validates :title, presence: true
    validates :title, length: { minimum: 5, maximum: 140 }
    validates :description, presence: true
    validates :description, length: { minimum: 20, maximum: 1000 }
    validates :price, presence: true
    validates :price, numericality: {less_than_or_equal_to: 1000, greater_than_or_equal_to: 1}
    validates :location, presence: true 
    
    validates :duration, presence: true
    validates :duration, numericality: {
      only_integer: true,
      greater_than: 0,
      message: "doit être un entier strictement positif"
    }
    validate :duration_must_be_multiple_of_5
  
    private
  
    def duration_must_be_multiple_of_5
      if duration.present? && duration % 5 != 0
        errors.add(:duration, "doit être un multiple de 5")
      end
    end
  end