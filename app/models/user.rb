class User < ActiveRecord::Base
  VALID_USERNAME_REGEX = /\A[a-z][a-z0-9]+\z/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[ a-z]+\z/i
  VALID_ROLE_REGEX = /user|admin/

  validates :username, presence: true,
                       uniqueness: true,
                       format: { with: VALID_USERNAME_REGEX },
                       length: { minimum: 4, maximum: 16 }

  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }

  validates :role, presence: true,
                   format: { with: VALID_ROLE_REGEX }

  validates :password, presence: true,
                       length: { minimum: 8}

  has_secure_password
end
