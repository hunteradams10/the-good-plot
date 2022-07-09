require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
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

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

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
