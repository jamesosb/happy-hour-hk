json.extract! offer, :id, :start, :end, :offertype, :desc, :created_at, :updated_at
json.url offer_url(offer, format: :json)
