class CarrierwaveClientsController < ApplicationController
  # GET /carrierwave_clients
  # GET /carrierwave_clients.xml
  def index
    list
  end
  
  # GET /menus
  # GET /menus.xml
  def list
    @carrierwave_clients = if ( params[:search].blank? )
      CarrierwaveClient.all
    else
      conditions = [ {:first_name => /#{params[:search]}/}, {:last_name => /#{params[:search]}/} ]
      CarrierwaveClient.any_of( conditions )
    end
    
    @clients = @carrierwave_clients

    respond_to do |format|
      format.html { render 'clients/list' }# index.html.erb
      format.js { render 'clients/list' }
      format.xml  { render :xml => @carrierwave_clients }
    end
  end

  # GET /carrierwave_clients/1
  # GET /carrierwave_clients/1.xml
  def show
    @carrierwave_client = CarrierwaveClient.find(params[:id])
    @client = @carrierwave_client

    respond_to do |format|
      format.html { render 'clients/show' }# show.html.erb
      format.xml  { render :xml => @carrierwave_client }
    end
  end

  # GET /carrierwave_clients/new
  # GET /carrierwave_clients/new.xml
  def new
    @carrierwave_client = CarrierwaveClient.new
    @client = @carrierwave_client

    respond_to do |format|
      format.html { render 'clients/new' }# new.html.erb
      format.xml  { render :xml => @carrierwave_client }
    end
  end

  # GET /carrierwave_clients/1/edit
  def edit
    @carrierwave_client = CarrierwaveClient.find(params[:id])
    @client = @carrierwave_client
    
    render 'clients/edit'
  end

  # POST /carrierwave_clients
  # POST /carrierwave_clients.xml
  def create
    @carrierwave_client = CarrierwaveClient.new(params[:carrierwave_client])
    @client = @carrierwave_client

    respond_to do |format|
      if @carrierwave_client.save
        format.html { redirect_to(@carrierwave_client, :notice => 'Carrierwave client was successfully created.') }
        format.xml  { render :xml => @carrierwave_client, :status => :created, :location => @carrierwave_client }
      else
        format.html { render 'clients/new' }
        format.xml  { render :xml => @carrierwave_client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carrierwave_clients/1
  # PUT /carrierwave_clients/1.xml
  def update
    @carrierwave_client = CarrierwaveClient.find(params[:id])
    @client = @carrierwave_client

    respond_to do |format|
      if @carrierwave_client.update_attributes(params[:carrierwave_client])
        format.html { redirect_to(@carrierwave_client, :notice => 'Carrierwave client was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render 'clients/edit' }
        format.xml  { render :xml => @carrierwave_client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carrierwave_clients/1
  # DELETE /carrierwave_clients/1.xml
  def destroy
    @carrierwave_client = CarrierwaveClient.find(params[:id])
    @client = @carrierwave_client
    @carrierwave_client.destroy

    respond_to do |format|
      format.html { redirect_to(carrierwave_clients_url) }
      format.xml  { head :ok }
    end
  end
end
