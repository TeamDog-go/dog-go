class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :surveys
    has_secure_token :api_token

    validates_uniqueness_of :username

    def to_s
        username
    end

    def to_json
        {username: self.username,
        id: self.id,
        admin: self.admin}
    end
end