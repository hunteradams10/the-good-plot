require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
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
      ),
      Address.create!(
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
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Street Name".to_s, count: 2
    assert_select "tr>td", text: "Suburb".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
