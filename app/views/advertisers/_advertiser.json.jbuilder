json.extract! advertiser, :id, :name, :address, :cif, :city, :postal_code, :bank, :paypal, :other, :price, :start_date, :duration, :url1, :url2, :url3, :active_url, :active, :entity_id, :created_at, :updated_at
json.url advertiser_url(advertiser, format: :json)
