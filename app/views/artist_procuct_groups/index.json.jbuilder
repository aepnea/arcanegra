json.array!(@artist_procuct_groups) do |artist_procuct_group|
  json.extract! artist_procuct_group, :id, :product_group_id, :article_id
  json.url artist_procuct_group_url(artist_procuct_group, format: :json)
end
