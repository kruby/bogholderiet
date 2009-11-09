class AssetablesController < ApplicationController
  # GET /assetables
  # GET /assetables.xml
  def index
    @assetable = find_assetable
    @assetables = @assetable.assetables

  end

  # GET /assetables/1
  # GET /assetables/1.xml
  def show
    @assetable = Assetable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assetable }
    end
  end

  # GET /assetables/new
  # GET /assetables/new.xml
  def new
    @assetable = Assetable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assetable }
    end
  end

  # GET /assetables/1/edit
  def edit
    @assetable = Assetable.find(params[:id])
  end

  # POST /assetables
  # POST /assetables.xml
  
  # def create
  #     @assetable = find_assetable
  #       @assetable = @assetable.assetables.build(params[:assetable])
  #       if @assetable.save
  #         flash[:notice] = "Successfully created assetable."
  #         redirect_to '/posts/'+ params[:post_id] + '/assetables'
  #       else
  #         render :action => 'new'
  #       end
  #   end
  
  def create
       @assetable = Assetable.new(params[:assetable])
   
       respond_to do |format|
         if @assetable.save
           flash[:notice] = 'Assetable was successfully created.'
           format.html { redirect_to(@assetable) }
           format.xml  { render :xml => @assetable, :status => :created, :location => @assetable }
         else
           format.html { render :action => "new" }
           format.xml  { render :xml => @assetable.errors, :status => :unprocessable_entity }
         end
       end
     end

  # PUT /assetables/1
  # PUT /assetables/1.xml
  def update
    @assetable = Assetable.find(params[:id])

    respond_to do |format|
      if @assetable.update_attributes(params[:assetable])
        flash[:notice] = 'Assetable was successfully updated.'
        format.html { redirect_to(@assetable) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assetable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assetables/1
  # DELETE /assetables/1.xml
  def destroy
    @assetable = Assetable.find(params[:id])
    @assetable.destroy

    respond_to do |format|
      format.html { redirect_to(assetables_url) }
      format.xml  { head :ok }
    end
  end
end

private

def find_assetable
  params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end
  nil
end

