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
    accepts_nested_attributes_for :questions, :allow_destroy => true
end
