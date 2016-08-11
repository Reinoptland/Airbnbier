json.extract! room, :id, :name, :description, :price, :image_url, :created_at, :updated_at
json.url room_url(room, format: :json)
