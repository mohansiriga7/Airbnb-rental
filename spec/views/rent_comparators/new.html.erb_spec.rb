require 'rails_helper'

RSpec.describe "rent_comparators/new", type: :view do
  before(:each) do
    assign(:rent_comparator, RentComparator.new(
      :address => "MyString",
      :long_term_rental_income => "9.99"
    ))
  end

  it "renders new rent_comparator form" do
    render

    assert_select "form[action=?][method=?]", rent_comparators_path, "post" do

      assert_select "input[name=?]", "rent_comparator[address]"

      assert_select "input[name=?]", "rent_comparator[long_term_rental_income]"
    end
  end
end
