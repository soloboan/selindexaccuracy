#!/usr/bin/Rscript

accuracy_SI <- function(h2,infosource,ana_type,nrecords,r){
  if(ana_type=="accuracy"){
    #####################################
    if(infosource=="grandparents"){
      sqrt((h2/4))
    }
    #####################################
    if(infosource=="parents"){
      sqrt((h2/2))
    }
    #####################################
    if(infosource=="mass"){
      repeatability=0
      return(sqrt((nrecords*h2)/(1+(repeatability*(nrecords-1)))))
    }
    #####################################
    if(infosource=="fullsibs"){
      Cfs=0
      return(sqrt((0.25*nrecords*h2)/ (1+(nrecords-1)*(0.5*h2+Cfs))))
    }
    #####################################
    if(infosource=="halfsibs"){
      Chs=0
      return(sqrt((0.0625*nrecords*h2)/ (1+(nrecords-1)*(0.25*h2+Chs)))) 
    }
    #####################################  
    if(infosource=="progeny"){
      return(sqrt((0.25*nrecords*h2)/(1+((nrecords-1)*0.25*h2))))
    }
    
  } else if (ana_type=="nrecords"){
    #####################################
    if(infosource=="fullsibs"){
      Cfs=0
      r2=r^2
      return((r2*(1-(0.5*h2)-Cfs))/ ((0.25*h2)-(0.5*h2*r2)-(r2*Cfs)))
    }
    #####################################
    if(infosource=="halfsibs"){
      Chs=0
      r2=r^2
      return((r2*(1-0.25*h2+Chs))/((0.0625*h2)-((0.25*h2*r2)+(r2*Chs))))
    }
    #####################################  
    if(infosource=="progeny"){
      r2=r^2
      return((r2*(1-(0.25*h2))) / ((0.25*h2)*(1-r2)))
    }
  }
}
