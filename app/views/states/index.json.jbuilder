json.array!(@states) do |state|
  json.extract! state, :id, :id_state, :name
  json.url state_url(state, format: :json)
end
