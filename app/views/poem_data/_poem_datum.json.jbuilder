json.extract! poem_datum, :id, :title, :content, :created_at, :updated_at
json.url poem_datum_url(poem_datum, format: :json)
