class BreweriesController < ApplicationController
  
  # GET /breweries
  def index
  	@breweries = Brewery.all
  end

  # GET /breweries/1
  def show
  	@brewery = Brewery.find(params[:id])
  end

  # GET /breweries/new
  def new
  	@brewery = Brewery.new
  end
  
  # GET /breweries/1/edit
  def edit
  	@brewery = Brewery.find(params[:id])
  end
  
  # POST /breweries
  def create
  	@brewery = Brewery.new(params[:brewery])
  	if @brewery.save
  	  flash[:success] = "Brewery was successfully created."
  	  redirect_to @brewery 
  	else
  	  render 'new'
  	end
  end

  # PUT /breweries/1
  def update
  	@brewery = Brewery.find(params[:id])
  	if @brewery.update_attributes(params[:brewery])
  	  flash[:success] = "Profile updated."
  	  redirect_to @brewery
  	else
  	  render action: "edit"
  	end
  end

  # DELETE /breweries/1
  def destroy
  	Brewery.find(params[:id]).destroy
  	flash[:success] = "Brewery destroyed."
  	redirect_to breweries_url
  end
end
