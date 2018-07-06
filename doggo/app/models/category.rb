# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  source     :string
#

class Category < ApplicationRecord
    has_many :questions
    has_many :surveys
    has_many :options, :through=> :questions
    accepts_nested_attributes_for :questions, :options, :allow_destroy => true

    def display_name
        self.source
    end
end

