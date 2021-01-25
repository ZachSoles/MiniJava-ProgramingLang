	.text
	.data
	str:                 #add new line
	.asciiz "\n"      #add new line
	.globl main
main:
	#begin prologue -- main
	subu $sp, $sp, 24    # stack frame is at least 24 bytes
	sw $fp, 4($sp)       # save caller's frame pointer
	sw $ra, 0($sp)       # save return address
	addi $fp, $sp, 20    # set up main's frame pointer
	#end prologue -- main
	li $v0, 0        # load literal 0 into $v0
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse
	li $v0, 0        # load literal 0 into $v0
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse4
	addi $v0, $zero, 1
	IfFalse:
	
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse   #syntaxtree.Println@6f602183syntaxtree.And@2a62a20bsyntaxtree.If@d8aba66
	li $v0, 0        # load literal 0 into $v0
	move $a0, $v0        #print
	li $v0, 1            #print
	syscall
	li $v0, 4            #print new line
	la $a0, str          #print new line
	syscall
	jal IsDone
	IsFalse:                  #syntaxtree.Println@6f602183syntaxtree.And@2a62a20bsyntaxtree.If@d8aba66
	li $v0, 0        # load literal 0 into $v0
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse
	li $v0, 0        # load literal 0 into $v0
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse4
	addi $v0, $zero, 1
	IfFalse:
	
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse   #syntaxtree.Println@1b028dcfsyntaxtree.And@7500cb15syntaxtree.If@4a4d5d44
	li $v0, 1        # load literal 1 into $v0
	move $a0, $v0        #print
	li $v0, 1            #print
	syscall
	li $v0, 4            #print new line
	la $a0, str          #print new line
	syscall
	jal IsDone
	IsFalse:                  #syntaxtree.Println@1b028dcfsyntaxtree.And@7500cb15syntaxtree.If@4a4d5d44
	li $v0, 1        # load literal 1 into $v0
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse
	li $v0, 1        # load literal 1 into $v0
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse4
	addi $v0, $zero, 1
	IfFalse:
	
	slt $t1, $v0, $zero
	beq $v0, $zero, IfFalse   #syntaxtree.Println@124c97e1syntaxtree.And@1daf1c92syntaxtree.Println@6e042451
	li $v0, 2        # load literal 2 into $v0
	move $a0, $v0        #print
	li $v0, 1            #print
	syscall
	li $v0, 4            #print new line
	la $a0, str          #print new line
	syscall
	jal IsDone
	IsFalse:                  #syntaxtree.Println@124c97e1syntaxtree.And@1daf1c92syntaxtree.Println@6e042451
	li $v0, 3        # load literal 3 into $v0
	move $a0, $v0        #print
	li $v0, 1            #print
	syscall
	li $v0, 4            #print new line
	la $a0, str          #print new line
	syscall
	IsDone
	IsDone
	IsDone
	#begin epilogue -- main
	lw $ra, 0($sp)       # restore return address
	lw $fp, 4($sp)       # restore caller's frame pointer
	addi $sp, $sp, 24    # pop the stack
	#end epilogue -- main
	li $v0, 10
	syscall
	
	.data


