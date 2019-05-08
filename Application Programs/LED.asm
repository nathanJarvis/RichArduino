.org 4100	
la r2, 1	
la r4, LOOP
la r29, 1
shl r29, r29, 15 // IO Address that don't change
addi r31, r29, 1 // IO address that do change
st r2, 31(r29)
LOOP: ld r2, (r29)
st r2, (r6)
br r4
stop