# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def image
      if @image
        if @image_class
  	      image_tag(@image, :class => @image_class)
	      else
	        image_tag(@image, :class => 'foto_lille')
	      end
	    else
	      image_tag('/images/forside.gif', :class => 'foto_lille')
  	  end
	end
	  
  # def active
  #     @aktiv_besked = "Hvis siden ikke er aktiv, kan 'hackere' ikke se den via ændring i URL"
  #   end
    
  def nice_timestamp(timestamp)
    h timestamp.strftime("%d.%m.%y - %H:%M")
  end
    
  def nice_date(datoen)
      return datoen.strftime('%d.%m.%y')
  end
  
  def nice_time(tiden)
    return tiden.strftime(' - %H:%M')
  end
  
  def wingedoff(modtaget)
    if modtaget == true
    	return '√' 
    else 
    	return '–' 
    end
  end
  
  def active_test(active)
    if active == true
  			@aktiv = '√' 
  	else 
  			@aktiv = '–' 
  	end
  end
  
  def autotab
    @current_tab ||= 0
    @current_tab += 1
  end
  
   
end
