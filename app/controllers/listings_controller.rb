class ListingsController < ApplicationController
  before_action :set_listing, only: %i[ show edit update destroy place_order ]
  before_action :set_form_vars, only: %i[ new edit ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  # GET /listings or /listings.json

  # This is querying the database and storing all of the listings in there, into the variable @listings.
  def index
    @listings = Listing.all
  end

  # GET /listings/1 or /listings/1.json
  def show
    # querying Favorite database, looking for Favourite where, if the favourite array isn't empty, display what has been favourited.
    @favorite_exists = Favorite.where(listing: @listing, user: current_user) == [] ? false : true
  end

  # GET /listings/new
  # Creates a new listing using the Listing model specifications (see: views/listings/new.html.erb)
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings or /listings.json
  def create
    # The post request that submits the form. It is created using the listing parameters and 
    # then assigned to the current user.

    @listing = Listing.new(listing_params)
    @listing.user = current_user


    respond_to do |format|
      if @listing.save
        format.html { redirect_to listing_url(@listing), notice: "You successfully created a listing! 😎" }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1 or /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to listing_url(@listing), notice: "Listing was successfully updated." }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1 or /listings/1.json
  def destroy
    @listing.destroy

    respond_to do |format|
      format.html { redirect_to listings_url, notice: "Listing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def place_order
    # creating an order based off the Order model parameters.
    # associating the order with the ID of the listing, the seller ID attached to the listing, and the current user who is ordering it.
    Order.create(
      listing_id: @listing.id,
      seller_id: @listing.user_id,
      buyer_id: current_user.id
    )
    # update the sold parameter on the model to 'true'.
    @listing.update(sold: true)

    redirect_to orders_success_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # we set the method "set_listing" to find the listing that matches the ID in the params.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def set_form_vars
      # these queries are calling the Genre and Listing models, and in the case of Genre, is storing
      # all the genres in an instance variable. Same with the keys of the conditions hash.
      @genres = Genre.all 
      @conditions = Listing.conditions.keys
    end

    def authorize_user
      if @listing.user_id != current_user.id 
        flash[:alert] = "You can't edit listings that don't belong to you."
        redirect_to listings_path
      end
    end

    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:title, :author, :publisher, :price, :summary, :sold, :condition, :genre_id, :user_id, :picture)
    end
end
