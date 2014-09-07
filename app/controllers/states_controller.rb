class StatesController < ApplicationController

  # GET /states
  # GET /states.json
  def index
    @states = State.all
    state_hash = @states.map { |state| state.generate_hash }

    if request.xhr?
      render json: state_hash.to_json
    else
      render :index
    end

    # @hash = Gmaps4rails.build_markers(@cities) do |city, marker|
    # marker.lat city.latitude
    # marker.lng city.longitude
    # marker.title "i'm the title"
    # marker.picture({
    #     :url => "/tweet.png",
    #     :width  => 32,
    #     :height => 32
    #     })
  end

  # GET /states/1
  # GET /states/1.json
  def show
    @state = State.find_by(abbreviation: params[:id])
    @congress_people = @state.congress_people.where(title: "Congressperson")
    @senators = @state.congress_people.where(title: "Senator")
  end

  # GET /states/new

end
