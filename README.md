### selection index accuracy formulae  

- Computing the 1) number of records or 2) the expected accuracy, given the following  
            - heritability (h^2)  
            - number of records  
            - information source  (progeny, full-sib, half-sib, own performance, parents, grandparents)  
            - Type of analysis (if you want to compute accuracy or the number of records given a specific accuracy)  
            
            
### Two main section  
 - Type of analysis (ana_type)  'accuracy' or 'nrecords'
 
### Argument 
            - h2                    : heritability of the trait
            - infosource            : The information source ('grandparents','parents','mass','halfsibs','fullsibs','progeny') 
            - ana_type              : The type of analysis; do you want to compute accuracy or number of records ('accuracy','nrecords')
            - nrecords              : number of records (e.g. number of offspring, or full/half sib information)
            - r                     : the accuracy of selection 

##### Note that, 
When you want to compute the *number of records* needed to achieve a specified accuracy, you run the script like below  
                        
               - source('accuracy_SI.R')  
               - accuracy_SI(h2=0.3,infosource='progeny',ana_type='nrecords',nrecords,r=0.95)  
               
##### Note that, 
When you want to compute the expected *accuracy*, you run the script like below  
                        
               - source('accuracy_SI.R')
               - accuracy_SI(h2=0.3,infosource='progeny',ana_type='accuracy',nrecords=60,r)
              
              



