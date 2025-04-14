class Attendance < ApplicationRecord
    belongs_to :user
    belongs_to :event
    
    validates :stripe_customer_id, presence: true, uniqueness: true
    validates :user_id, presence: true
    validates :event_id, presence: true
    
    validate :user_must_be_18_or_older
    
    private
    
    def user_must_be_18_or_older
        if user.present? && user.age < 18
        errors.add(:user, "doit avoir au moins 18 ans")
        end
    end
end