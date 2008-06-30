class SequencesController < ApplicationController
  # GET /sequences
  # GET /sequences.xml
  def index
    @sequences = Sequence.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sequences }
    end
  end

  # GET /sequences/1
  # GET /sequences/1.xml
  def show
    @sequence = Sequence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sequence }
    end
  end

  # GET /sequences/new
  # GET /sequences/new.xml
  def new
    @sequence = Sequence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sequence }
    end
  end

  # GET /sequences/1/edit
  def edit
    @sequence = Sequence.find(params[:id])
  end

  # POST /sequences
  # POST /sequences.xml
  def create
    @sequence = Sequence.new(params[:sequence])

    respond_to do |format|
      if @sequence.save
        flash[:notice] = 'Sequence was successfully created.'
        format.html { redirect_to(@sequence) }
        format.xml  { render :xml => @sequence, :status => :created, :location => @sequence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sequence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sequences/1
  # PUT /sequences/1.xml
  def update
    @sequence = Sequence.find(params[:id])

    respond_to do |format|
      if @sequence.update_attributes(params[:sequence])
        flash[:notice] = 'Sequence was successfully updated.'
        format.html { redirect_to(@sequence) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sequence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sequences/1
  # DELETE /sequences/1.xml
  def destroy
    @sequence = Sequence.find(params[:id])
    @sequence.destroy

    respond_to do |format|
      format.html { redirect_to(sequences_url) }
      format.xml  { head :ok }
    end
  end
end
