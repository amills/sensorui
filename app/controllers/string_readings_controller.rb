class StringReadingsController < ApplicationController
  # GET /string_readings
  # GET /string_readings.xml
  def index
    @string_readings = StringReading.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @string_readings }
    end
  end

  # GET /string_readings/1
  # GET /string_readings/1.xml
  def show
    @string_reading = StringReading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @string_reading }
    end
  end

  # GET /string_readings/new
  # GET /string_readings/new.xml
  def new
    @string_reading = StringReading.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @string_reading }
    end
  end

  # GET /string_readings/1/edit
  def edit
    @string_reading = StringReading.find(params[:id])
  end

  # POST /string_readings
  # POST /string_readings.xml
  def create
    @string_reading = StringReading.new(params[:string_reading])

    respond_to do |format|
      if @string_reading.save
        flash[:notice] = 'StringReading was successfully created.'
        format.html { redirect_to(@string_reading) }
        format.xml  { render :xml => @string_reading, :status => :created, :location => @string_reading }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @string_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /string_readings/1
  # PUT /string_readings/1.xml
  def update
    @string_reading = StringReading.find(params[:id])

    respond_to do |format|
      if @string_reading.update_attributes(params[:string_reading])
        flash[:notice] = 'StringReading was successfully updated.'
        format.html { redirect_to(@string_reading) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @string_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /string_readings/1
  # DELETE /string_readings/1.xml
  def destroy
    @string_reading = StringReading.find(params[:id])
    @string_reading.destroy

    respond_to do |format|
      format.html { redirect_to(string_readings_url) }
      format.xml  { head :ok }
    end
  end
end
