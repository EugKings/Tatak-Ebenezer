data SEGMENT
     line1 DB "                                   EBENEZER                      $"
     line2 DB 13,10,"                            Christian Academy, Inc.$"          ;13,10, code for return(enter)
     line3 DB 13,10,"     Quirino Highway, Brgy. Sto Cristo, City of San Jose del Monte, Bulacan$"           
     line4 DB 13,10,"                       My name is Eugene Audrey F. Cruz$"          
     line5 DB 13,10,"                              ICT 11 - Hezekiah$" 
     line6 DB 13,10,13,10,"TATAK EBENEZER$"
     line7 DB 13,10,"1. Fear God$"
     line8 DB 13,10,"2. Behave well all the time$"
     line9 DB 13,10,"3. Respect all people$"
     line10 DB 13,10,"4. Listen when somebody is speaking in front$"
     line11 DB 13,10,"5. Great and respect teachers, staffs, and visitors$"
     line12 DB 13,10,"6. Always use the magic words "po" and "opo"$"
     line13 DB 13,10,"7. Do not shout while in the corridor$"
     line14 DB 13,10,"8. Stay at the right side of the stairs while going up and going down$"
     line15 DB 13,10,"9. Throw garbage properly$"
     line16 DB 13,10,"10. Do assignments and projects on time$"
     line17 DB 13,10,"11. Wear proper uniform$"
     line18 DB 13,10,"12. Are punctual$"
     line19 DB 13,10,"13. Have a courage to communicate in english$"
     line20 DB 13,10,"14. Wait for their turn when buying in the canteen$"
     line21 DB 13,10,"15. Come to school prepared for the lesson$"
     line22 DB 13,10,"16. Flush the toilet bowl after use$"
     line23 DB 13,10,"17. Do not speak bad words$"
     line24 DB 13,10,"18. Are nationalistic$"
     line25 DB 13,10,"19. Do not vandalize$"
     line26 DB 13,10,"20. Excel in all aspects of life$"
     
                 
ENDS       

code SEGMENT  
    assume DS:data CS:code 
Start:    
      MOV AX,data           ;calls the data segment
      MOV DS,AX
      
      MOV AH,06h
      XOR AL,AL
      XOR CX,CX     
      MOV DX,184Fh          ;it colors the whole entire background 184F is the screen 80x25 resolution 
      MOV BH,1eh             ;or 00011110b. 1-Blue background, E-Yellow fontcolor      
      INT 10H               ;set sceen mode

      LEA DX,line1          ;constant code for displaying data segment, calling line1
      MOV AH,09h            ;display string '$'
      INT 21H               ;terminate this 3 lines of code or syntax
         
      LEA DX,line2       
      MOV AH,09h
      INT 21H
      
      LEA DX,line3       
      MOV AH,09h
      INT 21H
      
      LEA DX,line4       
      MOV AH,09h
      INT 21H
              
      LEA DX,line5       
      MOV AH,09h
      INT 21H
              
      LEA DX,line6       
      MOV AH,09h
      INT 21H
              
      LEA DX,line7       
      MOV AH,09h
      INT 21H
      
      LEA DX,line8       
      MOV AH,09h
      INT 21H
      
      LEA DX,line9       
      MOV AH,09h
      INT 21H
      
      LEA DX,line10       
      MOV AH,09h
      INT 21H
      
      LEA DX,line11       
      MOV AH,09h
      INT 21H
      
      LEA DX,line12       
      MOV AH,09h
      INT 21H
      
      LEA DX,line13       
      MOV AH,09h
      INT 21H
      
      LEA DX,line14       
      MOV AH,09h
      INT 21H
      
      LEA DX,line15       
      MOV AH,09h
      INT 21H
      
      LEA DX,line16       
      MOV AH,09h
      INT 21H
      
      LEA DX,line17       
      MOV AH,09h
      INT 21H
      
      LEA DX,line18       
      MOV AH,09h
      INT 21H
      
      LEA DX,line19       
      MOV AH,09h
      INT 21H
      
      LEA DX,line20       
      MOV AH,09h
      INT 21H
      
      LEA DX,line21       
      MOV AH,09h
      INT 21H
      
      LEA DX,line22       
      MOV AH,09h
      INT 21H
      
      LEA DX,line23       
      MOV AH,09h
      INT 21H
      
      LEA DX,line24       
      MOV AH,09h
      INT 21H
      
      LEA DX,line25       
      MOV AH,09h
      INT 21H                          
              
      LEA DX,line26       
      MOV AH,09h
      INT 21H
            
      MOV AH,01h            ;keyboard input with echo
      INT 21H               ;terminate this 2 lines of code or syntax
      
      MOV AH,4CH            ;terminate the whole syntaxes/codes in 'Start'
      INT 21H               ;terminate this 2 lines of code or syntax
            
ENDS                        ;contains the code from line 28 to 65, doesn't required to put.
END Start                   ;required to put, to end the whole program


