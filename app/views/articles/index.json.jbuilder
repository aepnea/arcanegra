json.array!(@articles) do |article|
  json.extract! article, :id, :artist_id, :product_id, :tittle, :description, :text, :enable
  json.url article_url(article, format: :json)
end
