json.extract! leavee, :id, :leave_from_date, :leave_to_date, :reason, :no_of_days, :created_at, :updated_at
json.url leavee_url(leavee, format: :json)
