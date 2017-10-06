json.extract! venue, :id, :vtype, :region, :name, :desc, :exists, :latitude, :longitude, :created_at, :updated_at
json.url venue_url(venue, format: :json)
