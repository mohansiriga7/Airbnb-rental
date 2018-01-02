require 'rails_helper'

RSpec.describe "rent_comparators/index", type: :view do
  before(:each) do
    assign(:rent_comparators, [
      RentComparator.create!(
        :address => "Address",
        :long_term_rental_income => "9.99"
      ),
      RentComparator.create!(
        :address => "Address",
        :long_term_rental_income => "9.99"
      )
    ])
  end

  it "renders a list of rent_comparators" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
