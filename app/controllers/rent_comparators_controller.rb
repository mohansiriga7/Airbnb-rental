class RentComparatorsController < ApplicationController
  before_action :set_rent_comparator, only: [:show, :edit, :update, :destroy]

  # GET /rent_comparators
  # GET /rent_comparators.json
  def index
    if params[:address].present? && params[:long_term_rental_income].present?
      @result = AirbnbHostPlace.compare(params[:address], params[:long_term_rental_income].to_d)
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_comparator_params
      params.require(:rent_comparator).permit(:address, :long_term_rental_income)
    end
end
