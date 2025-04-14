class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true

    after_create :welcome_send

    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end
    
end
