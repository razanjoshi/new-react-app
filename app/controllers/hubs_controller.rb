class HubsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_hub, only: [:show, :edit, :update, :destroy]

  # GET /hubs
  # GET /hubs.json
  def index
    @hubs = Hub.all

    respond_to do |format|
      format.html
      format.json { render json: @hubs}
    end
  end

  def update
    binding.pry
    if @hub.update(hub_params)
      render json: { hub: @hub }
    end
  end

  def scrape
    # urls.each do |url|
    #   response = HubsSpider.process(url)
    #   if response[:status] == :completed && response[:error].nil?
    #     flash.now[:notice] = "Successfully scraped url"
    #   else
    #     flash.now[:alert] = response[:error]
    #   end
    # rescue StandardError => e
    #   flash.now[:alert] = "Error: #{e}"
    # end
    binding.pry
    render json: { message: "An error occured" } 
  end

  # GET /hubs/1
  # GET /hubs/1.json
  def show
  end

  # GET /hubs/new
  def new
    @hub = Hub.new
  end

  # GET /hubs/1/edit
  def edit
    binding.pry
    @hub = Hub.find(params[:id])
  end

  # POST /hubs
  # POST /hubs.json
  def create
    @hub = Hub.new(hub_params)

    respond_to do |format|
      if @hub.save
        format.html { redirect_to @hub, notice: 'Hub was successfully created.' }
        format.json { render :show, status: :created, location: @hub }
      else
        format.html { render :new }
        format.json { render json: @hub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hubs/1
  # PATCH/PUT /hubs/1.json
  def update
    hub = Hub.find (params[:id].to_i)
    binding.pry
    # respond_to do |format|
    #   if hub.update(hub_params)
    #     format.html { redirect_to @hub, notice: 'Hub was successfully updated.' }
    #     format.json { render :show, status: :ok, location: hub }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: hub.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /hubs/1
  # DELETE /hubs/1.json
  def destroy
    @hub.destroy
    respond_to do |format|
      format.html { redirect_to hubs_url, notice: 'Hub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hub
      @hub = Hub.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hub_params
      params.require(:hub).permit(:active, :inactive)
    end

    def urls
      [
        'http://selenium-hub4.hq.otbeach.com:4444/grid/console',
        'http://selenium-hub5.hq.otbeach.com:4444/grid/console',
        'http://selenium-hub01.247.otbeach.com:4444/grid/console',
        'http://selenium-hub1.hq.otbeach.com:4444/grid/console',
        'http://selenium-hub6.hq.otbeach.com:4444/grid/console'
      ]
    end
end
