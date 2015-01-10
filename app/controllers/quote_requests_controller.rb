class QuoteRequestsController < ApplicationController
  before_action :set_quote_request, only: [:show, :edit, :update, :destroy]

  # GET /quote_requests/new
  def new
    @quote_request = QuoteRequest.new
  end

  # POST /quote_requests
  # POST /quote_requests.json
  def create
    @quote_request = QuoteRequest.new(quote_request_params)

    respond_to do |format|
      if @quote_request.save
        format.html { redirect_to "/", notice: 'Your request was successfully sent.' }
        format.json { render :show, status: :created, location: @quote_request }
        QuoteRequestMailer.quote_request_email(@quote_request).deliver
        
      else
        format.html { render :new }
        format.json { render json: @quote_request.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_request
      @quote_request = QuoteRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_request_params
      params.require(:quote_request).permit(:full_name, :email_address, :monthly_rent, :beds, :baths, :start_date, :end_date, :more_info)
    end
end
