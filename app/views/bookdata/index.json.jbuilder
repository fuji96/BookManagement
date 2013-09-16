json.array!(@bookdata) do |bookdatum|
  json.extract! bookdatum, :title, :authors, :price, :published
  json.url bookdatum_url(bookdatum, format: :json)
end
