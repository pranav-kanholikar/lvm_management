# == Schema Information
#
# Table name: employees
#
#  id                  :integer          not null, primary key
#  first_name          :string
#  last_name           :string
#  date_of_joining     :date
#  date_of_termination :date
#  manager             :string
#  designation         :string
#  department          :string
#  active              :boolean          default(TRUE)
#  lead                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  employer_id         :integer
#

class Employee < ApplicationRecord
    belongs_to :employer

    has_many :leavees ,dependent: :destroy

    mount_uploader :avatar, AvatarUploader  
end
