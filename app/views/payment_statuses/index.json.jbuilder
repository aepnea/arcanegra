json.array!(@payment_statuses) do |payment_status|
  json.extract! payment_status, :id, :status, :payment_type_id
  json.url payment_status_url(payment_status, format: :json)
end
