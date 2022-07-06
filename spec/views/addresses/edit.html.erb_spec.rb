require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      first_name: "MyString",
      last_name: "MyString",
      unit_number: 1,
      street_number: 1,
      street_name: "MyString",
      suburb: "MyString",
      state: "MyString",
      post_code: 1,
      country: "MyString",
      phone: 1,
      user: nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[first_name]"

      assert_select "input[name=?]", "address[last_name]"

      assert_select "input[name=?]", "address[unit_number]"

      assert_select "input[name=?]", "address[street_number]"

      assert_select "input[name=?]", "address[street_name]"

      assert_select "input[name=?]", "address[suburb]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[post_code]"

      assert_select "input[name=?]", "address[country]"

      assert_select "input[name=?]", "address[phone]"

      assert_select "input[name=?]", "address[user_id]"
    end
  end
end
