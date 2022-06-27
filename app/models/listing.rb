class Listing < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_rich_text :summary
end
