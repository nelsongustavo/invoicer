json.extract! customer, :id, :enrolment, :name, :cpf, :email, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)