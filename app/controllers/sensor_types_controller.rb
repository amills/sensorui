class SensorTypesController < ApplicationController
  # GET /sensor_types
  # GET /sensor_types.xml
  def index
    @sensor_types = SensorType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sensor_types }
    end
  end

  # GET /sensor_types/1
  # GET /sensor_types/1.xml
  def show
    @sensor_type = SensorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sensor_type }
    end
  end

  # GET /sensor_types/new
  # GET /sensor_types/new.xml
  def new
    @sensor_type = SensorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sensor_type }
    end
  end

  # GET /sensor_types/1/edit
  def edit
    @sensor_type = SensorType.find(params[:id])
  end

  # POST /sensor_types
  # POST /sensor_types.xml
  def create
    @sensor_type = SensorType.new(params[:sensor_type])

    respond_to do |format|
      if @sensor_type.save
        flash[:notice] = 'SensorType was successfully created.'
        format.html { redirect_to(@sensor_type) }
        format.xml  { render :xml => @sensor_type, :status => :created, :location => @sensor_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sensor_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sensor_types/1
  # PUT /sensor_types/1.xml
  def update
    @sensor_type = SensorType.find(params[:id])

    respond_to do |format|
      if @sensor_type.update_attributes(params[:sensor_type])
        flash[:notice] = 'SensorType was successfully updated.'
        format.html { redirect_to(@sensor_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sensor_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_types/1
  # DELETE /sensor_types/1.xml
  def destroy
    @sensor_type = SensorType.find(params[:id])
    @sensor_type.destroy

    respond_to do |format|
      format.html { redirect_to(sensor_types_url) }
      format.xml  { head :ok }
    end
  end
end
