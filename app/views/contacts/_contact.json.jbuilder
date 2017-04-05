json.extract! contact, :id, :nome, :cellphone, :created_at, :updated_at
json.url contact_url(contact, format: :json)
