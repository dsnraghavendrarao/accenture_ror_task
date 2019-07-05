json.extract! employee, :id, :name, :salary, :rating, :role_id, :report_role_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
