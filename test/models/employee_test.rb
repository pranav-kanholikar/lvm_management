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

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
