class User < ApplicationRecord

    has_secure_password

    validates :email, 
        format: { with: URI::MailTo::EMAIL_REGEXP },
        uniqueness: {case_sensitive: false}

    validates :password, presence: true, length: { minimum: 6 }
    
end
