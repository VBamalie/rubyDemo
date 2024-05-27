class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i ,message: "Please enter a valid email address."}
end
