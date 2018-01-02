require 'rails_helper'

RSpec.describe "rent_comparators/show", type: :view do
  before(:each) do
    @rent_comparator = assign(:rent_comparator, RentComparator.create!(
      :address => "Address",
      :long_term_rental_income => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/9.99/)
  end
end
