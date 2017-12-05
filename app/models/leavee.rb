# == Schema Information
#
# Table name: leavees
#
#  id              :integer          not null, primary key
#  leave_from_date :date
#  leave_to_date   :date
#  reason          :text
#  no_of_days      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  employee_id     :integer
#

class Leavee < ApplicationRecord
    belongs_to :employee
end
