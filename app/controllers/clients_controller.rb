class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.xml
  def index
    list
  end
  
  # GET /menus
  # GET /menus.xml
  def list
    @clients = if ( params[:search].blank? )
      Client.all
    else
      conditions = [ {:first_name => /#{params[:search]}/}, {:last_name => /#{params[:search]}/} ]
      Client.any_of(conditions)
    end

    respond_to do |format|
      format.html { render :list }# index.html.erb
      format.js { render :list }
      format.xml  { render :xml => @clients }
    end
  end

  # GET /clients/1
  # GET /clients/1.xml
  def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client }
    end
  end

  # GET /clients/new
  # GET /clients/new.xml
  def new
    redirect_to({:controller => 'carrierwave_clients', :action => 'new'})
    return
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client }
    end
  end

  # GET /clients/1/edit
  def edit
    @client = Client.find(params[:id])
  end

  # POST /clients
  # POST /clients.xml
  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => 'Client was successfully created.') }
        format.xml  { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.xml
  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to(@client, :notice => 'Client was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.xml
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to(clients_url) }
      format.xml  { head :ok }
    end
  end
  
  # GET the filtered counties or cities to be displayed in the drop down lists.
  def update_counties_and_cities
    unless ( params[:get].blank? || params[:val].blank? )
      if ( params[:get].to_s == 'counties' )
        @items = Country.find(params[:val]).counties
      elsif( params[:get].to_s == 'cities' )
        @items = County.find(params[:val]).cities
      end
    end
    
    response = []
    
    unless ( @items.blank? )
      for item in @items do
        response << {:When => params[:val], :Value => item.id, :Text => item.name}
      end
    end
    
    render({:json => response, :layout => false})
  end
end