class DeviceProfilesController < ApplicationController
  # GET /device_profiles
  # GET /device_profiles.xml
  def index
    @device_profiles = DeviceProfile.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @device_profiles }
    end
  end

  # GET /device_profiles/1
  # GET /device_profiles/1.xml
  def show
    @device_profile = DeviceProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @device_profile }
    end
  end

  # GET /device_profiles/new
  # GET /device_profiles/new.xml
  def new
    @device_profile = DeviceProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @device_profile }
    end
  end

  # GET /device_profiles/1/edit
  def edit
    @device_profile = DeviceProfile.find(params[:id])
  end

  # POST /device_profiles
  # POST /device_profiles.xml
  def create
    @device_profile = DeviceProfile.new(params[:device_profile])

    respond_to do |format|
      if @device_profile.save
        flash[:notice] = 'DeviceProfile was successfully created.'
        format.html { redirect_to(@device_profile) }
        format.xml  { render :xml => @device_profile, :status => :created, :location => @device_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @device_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /device_profiles/1
  # PUT /device_profiles/1.xml
  def update
    @device_profile = DeviceProfile.find(params[:id])

    respond_to do |format|
      if @device_profile.update_attributes(params[:device_profile])
        flash[:notice] = 'DeviceProfile was successfully updated.'
        format.html { redirect_to(@device_profile) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @device_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /device_profiles/1
  # DELETE /device_profiles/1.xml
  def destroy
    @device_profile = DeviceProfile.find(params[:id])
    @device_profile.destroy

    respond_to do |format|
      format.html { redirect_to(device_profiles_url) }
      format.xml  { head :ok }
    end
  end
end
