# Author: Diego Ascencio
# Date: Mar 8, 2018

#Examen 1 Parte practica 30%

.data
	V: .word 1,2,3
	M: .word 1,2,3
	   .word 4,5,6
	   .word 7,8,9
	R: .word 0,0,0
.text
	ori $s1, 0	#i
	ori $s2, 0 	#j
	ori $s3, 3	#tamaño i y j -> 3 
	ori $s4, 0	#index i	
	ori $s5, 0	#index j	 
	
	
main:	#for(i =0 i<3 ;i++)
	beq $s1, $s3, end
	add $s2,$zero,0

	#for (j=0 ,i<3 ,i++)
for2:	beq $s2, $s3, continue
	add $s2,$s2,1
	lw $s6,V($s4)	#t1 V
	lw $s7,M($s5)
	add $s5,$s5,4
	mul $s6, $s6,$s7
	lw $t2,R($s4)
	add $t2,$s6,$t2
	sw $t2,R,($s4)
	j for2

continue:	add $s4,$s4,4
	add $s1,$s1,1
	j main
end:
