class Listing < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_rich_text :summary
  has_one_attached :picture

  #enum allows us to specify how to conditions are displayed in the browser

  enum condition: {
    needs_rescue: 1,
    pages_missing: 2,
    well_loved: 3,
    brand_new: 4
  }
end
