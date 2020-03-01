class BookingsController < ApplicationController
	before_action :authenticate_user!
	def index
		if params[:screen_id].present?
			@screening = Screening.find(params[:screen_id])
			@seats = @screening.show_timing.theatre.seats
		else
			@bookings = Booking.order(created_at: :desc)
		end
	end

	def create
		@bookings = Booking.new(booking_params)
		if @bookings.save
			flash[:notice] = t('common.created_successfully', model_name: "Ticket")
			redirect_to bookings_path
		end
	end

	private
		def booking_params
    		params.require(:booking).permit(:seat_id, :screening_id).merge(user_id: current_user.id)
  		end
end
