class LocationReadingsController < ApplicationController
  # GET /location_readings
  # GET /location_readings.xml
  def index
    @location_readings = LocationReading.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @location_readings }
    end
  end

  # GET /location_readings/1
  # GET /location_readings/1.xml
  def show
    @location_reading = LocationReading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @location_reading }
    end
  end

  # GET /location_readings/new
  # GET /location_readings/new.xml
  def new
    @location_reading = LocationReading.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @location_reading }
    end
  end

  # GET /location_readings/1/edit
  def edit
    @location_reading = LocationReading.find(params[:id])
  end

  # POST /location_readings
  # POST /location_readings.xml
  def create
    @location_reading = LocationReading.new(params[:location_reading])

    respond_to do |format|
      if @location_reading.save
        flash[:notice] = 'LocationReading was successfully created.'
        format.html { redirect_to(@location_reading) }
        format.xml  { render :xml => @location_reading, :status => :created, :location => @location_reading }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @location_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /location_readings/1
  # PUT /location_readings/1.xml
  def update
    @location_reading = LocationReading.find(params[:id])

    respond_to do |format|
      if @location_reading.update_attributes(params[:location_reading])
        flash[:notice] = 'LocationReading was successfully updated.'
        format.html { redirect_to(@location_reading) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @location_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /location_readings/1
  # DELETE /location_readings/1.xml
  def destroy
    @location_reading = LocationReading.find(params[:id])
    @location_reading.destroy

    respond_to do |format|
      format.html { redirect_to(location_readings_url) }
      format.xml  { head :ok }
    end
  end
end
