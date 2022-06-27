require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      title: "MyString",
      author: "MyString",
      publisher: "MyString",
      price: 1,
      summary: nil,
      sold: false,
      condition: 1,
      genre: nil,
      user: nil
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[author]"

      assert_select "input[name=?]", "listing[publisher]"

      assert_select "input[name=?]", "listing[price]"

      assert_select "input[name=?]", "listing[summary]"

      assert_select "input[name=?]", "listing[sold]"

      assert_select "input[name=?]", "listing[condition]"

      assert_select "input[name=?]", "listing[genre_id]"

      assert_select "input[name=?]", "listing[user_id]"
    end
  end
end
