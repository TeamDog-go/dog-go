# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  api_token       :string
#  admin           :boolean          default(FALSE), not null
#

class User < ApplicationRecord
    has_many :surveys

    has_secure_password
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
