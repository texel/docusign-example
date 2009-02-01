class EnvelopesController < ApplicationController
  # GET /envelopes
  # GET /envelopes.xml
  def index
    @envelopes = Envelope.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @envelopes }
    end
  end

  # GET /envelopes/1
  # GET /envelopes/1.xml
  def show
    @envelope = Envelope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @envelope }
    end
  end

  # GET /envelopes/new
  # GET /envelopes/new.xml
  def new
    @envelope = Envelope.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @envelope }
    end
  end

  # GET /envelopes/1/edit
  def edit
    @envelope = Envelope.find(params[:id])
  end

  # POST /envelopes
  # POST /envelopes.xml
  def create
    @envelope = Envelope.new(params[:envelope])

    respond_to do |format|
      if @envelope.save
        flash[:notice] = 'Envelope was successfully created.'
        format.html { redirect_to(@envelope) }
        format.xml  { render :xml => @envelope, :status => :created, :location => @envelope }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @envelope.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /envelopes/1
  # PUT /envelopes/1.xml
  def update
    @envelope = Envelope.find(params[:id])

    respond_to do |format|
      if @envelope.update_attributes(params[:envelope])
        flash[:notice] = 'Envelope was successfully updated.'
        format.html { redirect_to(@envelope) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @envelope.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /envelopes/1
  # DELETE /envelopes/1.xml
  def destroy
    @envelope = Envelope.find(params[:id])
    @envelope.destroy

    respond_to do |format|
      format.html { redirect_to(envelopes_url) }
      format.xml  { head :ok }
    end
  end
end
