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
	la $s0, V
	la $s1, M
	la $s2, R
	ori $s3, 0	#i
	ori $s4, 0 	#j
	ori $t1	#tamaño i
	ori $t2	#tamaño j

main:	#for(i =0 i<3 ;i++)
	beq $s3,

end: