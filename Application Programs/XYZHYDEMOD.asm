.org 4100
la r1, 0
la r5, 0		
la r31, 1	
shl r31, r31, 14		//DVI address
la r30, LOOP
la r28, LOOP2
la r27, LOOP3
la r26, 90
la r2, 1
la r9, (r31)
addi r9, r9, 15164		
LOOP: st r1,(r31)		// blank the screen
addi r31, r31, 4
sub r10, r9, r31
brpl r30, r10
la r1, 88			// begin drawing title and axes
la r30, 1
shl r30, r30, 14 		// DVI address
LOOP3: addi r31, r30, 0
addi r31, r31, 2560  	// down five lines
addi r31, r31, 24   	// over 6 chars
st r1, (r31)
addi r31, r31, 8
addi r9, r31, 256 
LOOP2: st r2, (r31)
addi, r31, r31, 4
sub r8, r9, r31
brnz r28, r8
addi r1, r1, 1
sub r8, r26, r1
addi r30, r30, 2560
brpl r27, r8
la r31, LOOP4   
la r7, LOOP5  
la r17, NOTLESS
la r21, NOTMORE 
la r23, 48   //step count
la r30, 1                  
la r1, 0  
la r24, 8
shl r30, r30, 13 
la r8, 4
la r29, 0     
la r28, 1
la r13, 103 //g
la r14, 48 //0
la r15, 45 //-
la r16, 50 //2
shl r28, r28, 14   
addi r25, r28, 1024 	// down two lines
addi r25, r25, 104 		// correct offset to start drawing title
la r22, 34		//draw "
st r22, (r25)
addi r25, r25, 4 
la r22, 51		//draw 3
st r22, (r25)
addi r25, r25, 4 
la r22, 68		//draw D
st r22, (r25)
addi r25, r25, 4 
la r22, 34		//draw "
st r22, (r25)
addi r25, r25, 4 
la r22, 32		//draw space
st r22, (r25)
addi r25, r25, 4 
la r22, 65		//draw A
st r22, (r25)
addi r25, r25, 4 
la r22, 99		//draw c
st r22, (r25)
addi r25, r25, 4
la r22, 99		//draw c
st r22, (r25)
addi r25, r25, 4
la r22, 101		//draw e
st r22, (r25)
addi r25, r25, 4
la r22, 108		//draw l
st r22, (r25)
addi r25, r25, 4
la r22, 101		//draw e
st r22, (r25)
addi r25, r25, 4
la r22, 114		//draw r
st r22, (r25)
addi r25, r25, 4
la r22, 97		//draw a
st r22, (r25)
addi r25, r25, 4
la r22, 116		//draw t
st r22, (r25)
addi r25, r25, 4
la r22, 105		//draw i
st r22, (r25)
addi r25, r25, 4
la r22, 111		//draw o
st r22, (r25)
addi r25, r25, 4
la r22, 110		//draw n
st r22, (r25)
addi r25, r25, 4
la r22, 32		//draw space
st r22, (r25)
addi r25, r25, 4 
la r22, 77		//draw M
st r22, (r25)
addi r25, r25, 4 
la r22, 97		//draw a
st r22, (r25)
addi r25, r25, 4
la r22, 103		//draw g
st r22, (r25)
addi r25, r25, 4
la r22, 110		//draw n
st r22, (r25)
addi r25, r25, 4
la r22, 105		//draw i
st r22, (r25)
addi r25, r25, 4
la r22, 116		//draw t
st r22, (r25)
addi r25, r25, 4
la r22, 117		//draw u
st r22, (r25)
addi r25, r25, 4
la r22, 100		//draw d
st r22, (r25)
addi r25, r25, 4
la r22, 101		//draw e
st r22, (r25)
addi r28, r28, 2592 	//	beginning of x axis  
addi r27, r28, 2560 	//	beginning of y axis
addi r26, r27, 2560 	//	beginning of z axis
la r3, 0				//	previous z offset
la r4, 0				//	previous y offset
la r5, 0				//	previous x offset
la r11, 1 //pipe
la r12, 2 //dot
st r14, 636(r26) // draw 0
st r14, 636(r28)
st r14, 636(r27)
st r13, 516(r26) // draw g for -2g
st r13, 516(r28) 
st r13, 516(r27)
st r13, 580(r26) // draw g for -g
st r13, 580(r28)
st r13, 580(r27)
st r15, 508(r26) // draw - for -2g
st r15, 508(r28)
st r15, 508(r27)
st r15, 576(r26) // draw - for -g
st r15, 576(r28)
st r15, 576(r27)
st r13, 700(r26) // draw g for g
st r13, 700(r28)
st r13, 700(r27)
st r13, 764(r26) // draw g for 2g
st r13, 764(r28)
st r13, 764(r27)
st r16, 760(r26) // draw 2 for 2g
st r16, 760(r28)
st r16, 760(r27)
st r16, 512(r26) // draw 2 for -2g
st r16, 512(r28)
st r16, 512(r27)
la r25, 1				// 	begin writing: Steps: 
shl r25, r25, 14		
addi r25, r25, 12948	//  put Steps: 25 lines down and in the middle
la r16, 83
st r16, (r25)			//	store S 
la r16, 116
addi r25, r25, 4
st r16, (r25)			//	store t
la r16, 101
addi r25, r25, 4
st r16, (r25)			//	store e
la r16, 112
addi r25, r25, 4
st r16, (r25)			//	store p
la r16, 115
addi r25, r25, 4
st r16, (r25)			//	store s
la r16, 58
addi r25, r25, 4
st r16, (r25)			//	store :
la r16, 32
addi r25, r25, 4
st r16, (r25)			//	store space
addi r25, r25, 4		// 	move the step location pointer over a character	
la r20, 150 			//	acceleration threshold to start watching for a step
la r22, 70			// 	acceleration threshold to count a step if we were positive
la r10, 50
la r18, 1
shl r18, r18, 15		// 	dio manager address
la r13, DONTRESETSTEPS
LOOP4: ld r1, 3(r30)	//	setup accel loop
andi r2, r1, 1 			//	check if setup is done
brzr r31, r2            //	r31 holds loop4
ld r1, (r30)			// 	???
andi r2, r1, 2  		// 	???
brnz r31, r2			// 	???
la r9, 0				// 	r9 is used to indicate we have seen a y-accel value greater than threshold
LOOP5: ld r1, 2(r30)	// 	loop for storing values to screen
andi r2, r1, 1		 	//		
brzr r7, r2    			// 	r7 holds loop5
ld r1, (r30)			//	r1 holds the accel data			
st r11,(r26)  			//	z loop -- store a pipe to the previous z loc
sub r26,r26,r3			//	get rid of the previous z offset
shr r1, r1, 8			//	shifts the z data into bottom eight digits of r1
andi r3, r1, 255		//	r3 holds just the z data	
addi r3, r3, 128		//	add a 1 to the eight bit -- negative values now have magnitude 0-127 and positive values have 128-255
andi r3, r3, 255		// 	mask off overflow 
add r26,r26,r3			// 	add this value (0-255) to the offset for the z axis -- creates the new z loc
st r12,(r26)			// 	store a pipe w/ dot to the new z loc
st r11, (r27) 			//	y loop -- store a pipe to the previous y loc
sub r27, r27, r4		//	get rid of the previous y offset 
shr r1, r1, 8 			//	shifts the y data into bottom eight digits of r1
andi r4, r1, 255		//	r4 holds just the y data
addi r4, r4, 128		//	add a 1 to the eight bit -- negative values now have magnitude 0-127 and positive values have 128-255
andi r4, r4, 255		//	mask off overflow
add r27, r27, r4		//	add this value (0-255) to the offset for the y axis -- creates the new y loc
st r12, (r27)			// 	store a pipe w/ dot to the new y loc
sub r19, r20, r4 		//	if y accel is not greater than the positive threshold
brpl r21, r19 			//	branch to NOTMORE
la r9, 1				// 	load r9 with 1 to indicate we have seen a value higher than 1		
NOTMORE: sub r19, r4, r22		// 	r19 gets negative threshold minus value		
brpl r17, r19		    //	the value is not lower than negative threshold
add r23, r23, r9		//  the value is less than the negative threshold so add the value of r9 to the step counter
la r9, 0				// 	the value has been less than the threshold so load the "seenPositive register to zero"
NOTLESS: ld r15, (r18)	//	r15 holds the value of the voltage below the button.. if 1, need to reset step count
brzr r13, r15			// 	test the value of the voltage below the button	
la r23, 48				//	value of voltage is 1, so reset the step counter to ASCII zero
la r9, 0				// 	also reset the "have seen a high"	
DONTRESETSTEPS: st r23, (r25) 	//	write value of step count to the DVI slot
st r11, (r28) 			//	x loop
sub r28, r28, r5		
shr r1, r1, 8 					
andi r5, r1, 255			
addi r5, r5, 128				
andi r5, r5, 255		
add r28, r28, r5
st r12, (r28)
br r7					//	branch to LOOP5
stop