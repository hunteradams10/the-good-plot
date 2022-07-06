require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      first_name: "First Name",
      last_name: "Last Name",
      unit_number: 2,
      street_number: 3,
      street_name: "Street Name",
      suburb: "Suburb",
      state: "State",
      post_code: 4,
      country: "Country",
      phone: 5,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(//)
  end
end
