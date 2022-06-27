require 'rails_helper'

RSpec.describe "listings/show", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      title: "Title",
      author: "Author",
      publisher: "Publisher",
      price: 2,
      summary: nil,
      sold: false,
      condition: 3,
      genre: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
