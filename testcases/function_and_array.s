.data

newline: .asciiz "\n"
output_str: .asciiz "Output : "
input_str: .asciiz "Input : "
.align 2
_a: .space 400

.text
.globl main

fa:
move $fp, $sp
addiu $sp, $sp, -4
sw $ra, 0($sp)
addiu $sp, $sp, 0
lw $v0, 8($fp)
li $t0, 4
mul $v0, $v0, $t0
lw $t0, 4($fp)
add $t0, $t0, $v0
lw $v0, 0($t0)
move $t0, $v0
li $v0, 4
la $a0, output_str
syscall
move $a0, $t0
li $v0, 1
syscall
li $v0, 4
la $a0, newline
syscall
addiu $sp, $sp, 0
lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra
fb:
move $fp, $sp
addiu $sp, $sp, -4
sw $ra, 0($sp)
addiu $sp, $sp, 0
lw $v0, 4($fp)
li $t0, 4
mul $v0, $v0, $t0
lw $t0, 8($fp)
add $t0, $t0, $v0
lw $v0, 0($t0)
move $t0, $v0
li $v0, 4
la $a0, output_str
syscall
move $a0, $t0
li $v0, 1
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 9
li $t0, 4
mul $v0, $v0, $t0
lw $t0, 8($fp)
add $t0, $t0, $v0
move $v0, $t0
addiu $sp, $sp, -4
sw $v0, 0($sp)
li $v0, 3
lw $t0, 0($sp)
addiu $sp, $sp, 4
move $t1, $v0
sw $t1, 0($t0)
li $v0, 9
addiu $sp, $sp, -4
sw $v0, 0($sp)
lw $v0, 8($fp)
addiu $sp, $sp, -4
sw $v0, 0($sp)
addiu $sp, $sp, -4
sw $fp, 0($sp)
jal fa
lw $fp, 0($sp)
addiu $sp, $sp, 4
addiu $sp, $sp, 4
addiu $sp, $sp, 4
addiu $sp, $sp, 0
lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra
fc:
move $fp, $sp
addiu $sp, $sp, -4
sw $ra, 0($sp)
addiu $sp, $sp, 0
lw $v0, 4($fp)
li $t0, 4
mul $v0, $v0, $t0
lw $t0, 8($fp)
add $t0, $t0, $v0
lw $v0, 0($t0)
move $t0, $v0
li $v0, 4
la $a0, output_str
syscall
move $a0, $t0
li $v0, 1
syscall
li $v0, 4
la $a0, newline
syscall
li $v0, 4
li $t0, 4
mul $v0, $v0, $t0
la $t0, _a
add $t0, $t0, $v0
move $v0, $t0
addiu $sp, $sp, -4
sw $v0, 0($sp)
li $v0, 2
lw $t0, 0($sp)
addiu $sp, $sp, 4
move $t1, $v0
sw $t1, 0($t0)
la $v0, _a
addiu $sp, $sp, -4
sw $v0, 0($sp)
li $v0, 4
addiu $sp, $sp, -4
sw $v0, 0($sp)
addiu $sp, $sp, -4
sw $fp, 0($sp)
jal fb
lw $fp, 0($sp)
addiu $sp, $sp, 4
addiu $sp, $sp, 4
addiu $sp, $sp, 4
addiu $sp, $sp, 0
lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra
main:
move $fp, $sp
addiu $sp, $sp, -4
sw $ra, 0($sp)
addiu $sp, $sp, -400
li $v0, 8
li $t0, 4
mul $v0, $v0, $t0
addiu $t0, $fp, -404
add $t0, $t0, $v0
move $v0, $t0
addiu $sp, $sp, -4
sw $v0, 0($sp)
li $v0, 1
lw $t0, 0($sp)
addiu $sp, $sp, 4
move $t1, $v0
sw $t1, 0($t0)
addiu $v0, $fp, -404
addiu $sp, $sp, -4
sw $v0, 0($sp)
li $v0, 8
addiu $sp, $sp, -4
sw $v0, 0($sp)
addiu $sp, $sp, -4
sw $fp, 0($sp)
jal fc
lw $fp, 0($sp)
addiu $sp, $sp, 4
addiu $sp, $sp, 4
addiu $sp, $sp, 4
addiu $sp, $sp, 400
lw $ra, 0($sp)
addiu $sp, $sp, 4
jr $ra
