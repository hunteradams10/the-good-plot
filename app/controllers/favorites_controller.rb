class FavoritesController < ApplicationController
  def update
    # Passing in the listing parameters and finding the ID of the listing by using Listing.find
    favorite = Favorite.where(listing: Listing.find(params[:listing]), user: current_user)
    # If the array is empty, a favourite will be created and associated with the listing in the params (current listing) 
    # and also associated with the current_user
    if favorite == []
      Favorite.create(listing: Listing.find(params[:listing]), user: current_user)
      @favorite_exists = true
      # Else destroy it so that duplicates can't happen:
    else 
      favorite.destroy_all
      @favorite_exists = false
    end 
    # this is formats it to the correct type for the view (...I think)
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
