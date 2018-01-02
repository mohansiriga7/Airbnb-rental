class RentComparatorsController < ApplicationController
  before_action :set_rent_comparator, only: [:show, :edit, :update, :destroy]

  # GET /rent_comparators
  # GET /rent_comparators.json
  def index
    if params[:address].present? && params[:long_term_rental_income].present?
      #Searching entered address in AirbnbHostPlace addresses within one mile
      airbnb_place = AirbnbHostPlace.near(params[:address], 1).first
      @result = ""
      if airbnb_place.present?
        if airbnb_place.price > params[:long_term_rental_income].to_d
          @result = "Profit: #{airbnb_place.price - params[:long_term_rental_income].to_d}, comparing to monthly rental"
        else
          @result = "Loss: #{params[:long_term_rental_income].to_d - airbnb_place.price}, comparing to long term monthly rental"
        end
      else
        @result = "No Airbnb Host Places found."
      end

    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_comparator_params
      params.require(:rent_comparator).permit(:address, :long_term_rental_income)
    end
end
