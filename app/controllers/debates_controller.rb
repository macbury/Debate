class DebatesController < ApplicationController

  # GET /debates
  # GET /debates.xml
  def index
    @debates = Debate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @debates }
    end
  end

  # GET /debates/1
  # GET /debates/1.xml
  def show
    @debate = Debate.find_by_permalink!(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @debate }
    end
  end
	
  # GET /debates/new
  # GET /debates/new.xml
  def new
    @debate = Debate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @debate }
    end
  end

  # GET /debates/1/edit
  def edit
    @debate = Debate.find_by_permalink!(params[:id])
  end

  # POST /debates
  # POST /debates.xml
  def create
    @debate = Debate.new(params[:debate])

    respond_to do |format|
      if @debate.save
        flash[:notice] = 'Debate was successfully created.'
        format.html { redirect_to(@debate) }
        format.xml  { render :xml => @debate, :status => :created, :location => @debate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @debate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /debates/1
  # PUT /debates/1.xml
  def update
    @debate = Debate.find_by_permalink!(params[:id])

    respond_to do |format|
      if @debate.update_attributes(params[:debate])
        flash[:notice] = 'Debate was successfully updated.'
        format.html { redirect_to(@debate) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @debate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /debates/1
  # DELETE /debates/1.xml
  def destroy
    @debate = Debate.find_by_permalink!(params[:id])
    @debate.destroy

    respond_to do |format|
      format.html { redirect_to(debates_url) }
      format.xml  { head :ok }
    end
  end

end
