class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.xml
  # GET /locations.fxml
  def index
    @locations = Location.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locations }
      format.fxml  { render :fxml => @locations }
    end
  end

  # GET /locations/1
  # GET /locations/1.xml
  # GET /locations/1.fxml
  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @location }
      format.fxml  { render :fxml => @location }
    end
  end

  # GET /locations/new
  # GET /locations/new.xml
  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  # POST /locations
  # POST /locations.xml
  # POST /locations.fxml
  def create
    @location = Location.new(params[:location])

    respond_to do |format|
      if @location.save
        flash[:notice] = 'Location was successfully created.'
        format.html { redirect_to(@location) }
        format.xml  { render :xml => @location, :status => :created, :location => @location }
        format.fxml  { render :fxml => @location }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @location.errors }
      end
    end
  end

  # PUT /locations/1
  # PUT /locations/1.xml
  # PUT /locations/1.fxml
  def update
    @location = Location.find(params[:id])
    @saved = @location.update_attributes(params[:location])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Location was successfully updated.'
        format.html { redirect_to(@location) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @location }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @location.errors }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.xml
  # DELETE /locations/1.fxml
  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to(locations_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @location }
    end
  end
end