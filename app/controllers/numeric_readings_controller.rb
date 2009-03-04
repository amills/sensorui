class NumericReadingsController < ApplicationController
  # GET /numeric_readings
  # GET /numeric_readings.xml
  def index
    @numeric_readings = NumericReading.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @numeric_readings }
    end
  end

  # GET /numeric_readings/1
  # GET /numeric_readings/1.xml
  def show
    @numeric_reading = NumericReading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @numeric_reading }
    end
  end

  # GET /numeric_readings/new
  # GET /numeric_readings/new.xml
  def new
    @numeric_reading = NumericReading.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @numeric_reading }
    end
  end

  # GET /numeric_readings/1/edit
  def edit
    @numeric_reading = NumericReading.find(params[:id])
  end

  # POST /numeric_readings
  # POST /numeric_readings.xml
  def create
    @numeric_reading = NumericReading.new(params[:numeric_reading])

    respond_to do |format|
      if @numeric_reading.save
        flash[:notice] = 'NumericReading was successfully created.'
        format.html { redirect_to(@numeric_reading) }
        format.xml  { render :xml => @numeric_reading, :status => :created, :location => @numeric_reading }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @numeric_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /numeric_readings/1
  # PUT /numeric_readings/1.xml
  def update
    @numeric_reading = NumericReading.find(params[:id])

    respond_to do |format|
      if @numeric_reading.update_attributes(params[:numeric_reading])
        flash[:notice] = 'NumericReading was successfully updated.'
        format.html { redirect_to(@numeric_reading) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @numeric_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /numeric_readings/1
  # DELETE /numeric_readings/1.xml
  def destroy
    @numeric_reading = NumericReading.find(params[:id])
    @numeric_reading.destroy

    respond_to do |format|
      format.html { redirect_to(numeric_readings_url) }
      format.xml  { head :ok }
    end
  end
end
