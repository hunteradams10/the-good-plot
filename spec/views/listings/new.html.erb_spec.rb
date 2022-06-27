require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
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

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

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
