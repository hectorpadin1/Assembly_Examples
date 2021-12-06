.text
.globl main

main:
  la $a0, a
  la $t1, count
  lw $a2, 0($t1)
  la $a1, b
  addi $t0, $0, 1
  lwc1 $f2, 0($a1)

Loop:
  beq $t0, $a2, salir
  lwc1 $f0, 4($a0)
  addi $t0, $t0, 1
  add.s $f2, $f0, $f2
  addi $a0, $a0, 4
  swc1 $f2, 4($a1)
  addi $a1, $a1, 4 
  j Loop

salir:
  addi $v0, $0, 10
  syscall


# segmento de datos
.data
a: .float 1.0, 2.0, 3.0, 4.0, 5.0, 6.0
b: .float 0.0, 1.0, 2.0, 3.0, 4.0, 5.0
count: .word 5

# fin