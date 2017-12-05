# == Schema Information
#
# Table name: employers
#
#  id             :integer          not null, primary key
#  name           :string
#  address        :string
#  city           :string
#  state          :string
#  zip_code       :integer
#  website        :string
#  email          :string
#  phone_no       :string
#  alternative_no :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Employer < ApplicationRecord
    has_many :employees , dependent: :destroy
end
