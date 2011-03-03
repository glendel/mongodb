class PaperclipClientsController < ApplicationController
  # GET /paperclip_clients
  # GET /paperclip_clients.xml
  def index
    list
  end
  
  # GET /menus
  # GET /menus.xml
  def list
    @paperclip_clients = if ( params[:search].blank? )
      PaperclipClient.all
    else
      conditions = [ {:first_name => /#{params[:search]}/}, {:last_name => /#{params[:search]}/} ]
      PaperclipClient.any_of(conditions)
    end
    
    @clients = @paperclip_clients

    respond_to do |format|
      format.html { render 'clients/list' }# index.html.erb
      format.js { render 'clients/list' }
      format.xml  { render :xml => @paperclip_clients }
    end
  end

  # GET /paperclip_clients/1
  # GET /paperclip_clients/1.xml
  def show
    @paperclip_client = PaperclipClient.find(params[:id])
    @client = @paperclip_client

    respond_to do |format|
      format.html { render 'clients/show' }# show.html.erb
      format.xml  { render :xml => @paperclip_client }
    end
  end

  # GET /paperclip_clients/new
  # GET /paperclip_clients/new.xml
  def new
    @paperclip_client = PaperclipClient.new
    @client = @paperclip_client

    respond_to do |format|
      format.html { render 'clients/new' }# new.html.erb
      format.xml  { render :xml => @paperclip_client }
    end
  end

  # GET /paperclip_clients/1/edit
  def edit
    @paperclip_client = PaperclipClient.find(params[:id])
    @client = @paperclip_client
    
    render 'clients/edit'
  end

  # POST /paperclip_clients
  # POST /paperclip_clients.xml
  def create
    @paperclip_client = PaperclipClient.new(params[:paperclip_client])
    @client = @paperclip_client

    respond_to do |format|
      if @paperclip_client.save
        format.html { redirect_to(@paperclip_client, :notice => 'Paperclip client was successfully created.') }
        format.xml  { render :xml => @paperclip_client, :status => :created, :location => @paperclip_client }
      else
        format.html { render 'clients/new' }
        format.xml  { render :xml => @paperclip_client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paperclip_clients/1
  # PUT /paperclip_clients/1.xml
  def update
    @paperclip_client = PaperclipClient.find(params[:id])
    @client = @paperclip_client

    respond_to do |format|
      if @paperclip_client.update_attributes(params[:paperclip_client])
        format.html { redirect_to(@paperclip_client, :notice => 'Paperclip client was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render 'clients/edit' }
        format.xml  { render :xml => @paperclip_client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paperclip_clients/1
  # DELETE /paperclip_clients/1.xml
  def destroy
    @paperclip_client = PaperclipClient.find(params[:id])
    @client = @paperclip_client
    @paperclip_client.destroy

    respond_to do |format|
      format.html { redirect_to(paperclip_clients_url) }
      format.xml  { head :ok }
    end
  end
end
