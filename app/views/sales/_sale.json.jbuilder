json.extract! sale, :id, :Customer_id, :user_id, :sale_date, :total, :PaymentMethod_id, :times, :is_fitpark, :created_at, :updated_at
json.url sale_url(sale, format: :json)