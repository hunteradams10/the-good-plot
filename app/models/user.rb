class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # these relationships had to be added in manually so that the User and Listing models know
  # where to look for the data they need.
  
  has_many :listings

  has_many :sold_orders, foreign_key: "seller_id", class_name: "Order"
  has_many :bought_orders, foreign_key: "buyer_id", class_name: "Order"

  after_create :welcome_send
  
  def welcome_send
    WelcomeMailer.welcome_send(self).deliver
    #redirect_to root_path, alert: "Thank you for signing up!"
  end
end
