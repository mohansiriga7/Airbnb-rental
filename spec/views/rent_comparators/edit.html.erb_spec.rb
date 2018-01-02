require 'rails_helper'

RSpec.describe "rent_comparators/edit", type: :view do
  before(:each) do
    @rent_comparator = assign(:rent_comparator, RentComparator.create!(
      :address => "MyString",
      :long_term_rental_income => "9.99"
    ))
  end

  it "renders the edit rent_comparator form" do
    render

    assert_select "form[action=?][method=?]", rent_comparator_path(@rent_comparator), "post" do

      assert_select "input[name=?]", "rent_comparator[address]"

      assert_select "input[name=?]", "rent_comparator[long_term_rental_income]"
    end
  end
end
