class Order < ApplicationRecord
  belongs_to :listing
  belongs_to :buyer
  belongs_to :seller
  belongs_to :address
end
