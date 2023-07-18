json.extract! article, :id, :title, :description, :requirements, :profit, :client_id, :created_at, :updated_at
json.url article_url(article, format: :json)
