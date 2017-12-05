json.extract! employee, :id, :first_name, :last_name, :date_of_joining, :date_of_termination, :manager, :designation, :department, :active, :lead, :created_at, :updated_at
json.url employee_url(employee, format: :json)
