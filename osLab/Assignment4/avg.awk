#!/usr/bin/awk -f

BEGIN {
 FS="~";#Semicolon is not required if you are putting them in thier own line
 count=0;
 total=0;
  
	
}

NR > 1 && NR < 6 {
  if (subject=="SUB1" || subject=="Subject_1")
  {
      total+=$3	;
       count++;
       
  }	  
  else if (subject =="SUB2" || subject =="Subject_2")
  {
	  
      total+=$4	;
       count++;
       
  }

  else if (subject =="SUB3" || subject =="Subject_3")
   {
      total+=$5	 ;
       count++;
        
   }
	
	
   
}

END {
  
  if (count > 0)
  {
     average=total/count;
     print "The average marks of " subject ":" ,average;     
  }	  
  else 
  {
    print "No Records Found";
  }
 	
	
	
}
