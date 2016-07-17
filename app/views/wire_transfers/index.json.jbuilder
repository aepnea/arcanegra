json.array!(@wire_transfers) do |wire_transfer|
  json.extract! wire_transfer, :id, :bank, :titular_account, :account, :account_type, :rut, :email, :payment_type_id
  json.url wire_transfer_url(wire_transfer, format: :json)
end
