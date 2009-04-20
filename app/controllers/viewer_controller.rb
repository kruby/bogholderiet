class ViewerController < ApplicationController
  
  
  def show
    
           @page = Page.find(params[:id])
           
           @pagetitle = @page.title rescue 'Indhold følger snarest'
           @content = @page.body rescue 'Indhold følger snarest'
           @headline = @page.headline rescue 'Indhold følger snarest'
           
           @posts = Post.forside_blogs_active.all(:limit => 3)
                        
  end
  
  
  def forside
    
           @page = Page.find_by_name(params[:name])
           
           @pagetitle = @page.title rescue 'Indhold følger snarest'
           @content = @page.body rescue 'Indhold følger snarest'
           @headline = @page.headline rescue 'Indhold følger snarest'
           
           @posts = Post.forside_blogs_active.all(:limit => 3)
             
    render :action => "show" 
                        
  end
  
  
  def index
    @pagetitle = 'Overskrifter fra Viewercontroller!'
  end
  
  def welcome
    @pagetitle="Jungle Juice. Brasiliens frugter!"
    #@fruit = Fruit.find_by_name(params[:name])
    #@fruit = Fruit.find(1)
    #@fruit = Fruit.find(1) # Finder kort 1 i databasen som tilfældigvis er Acai
    
  end
  
  def product
    @pagetitle="Her viser vi alle kort i databasen"
    @fruit = Fruit.find_by_name(params[:name])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fruit }
    end
  end
  
  
end
