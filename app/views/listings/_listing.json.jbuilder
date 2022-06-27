json.extract! listing, :id, :title, :author, :publisher, :price, :summary, :sold, :condition, :genre_id, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
json.summary listing.summary.to_s
