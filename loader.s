.section .text
.extern kernelMain
.global loader

loader: 
    mov $kernelMain, %esp
    call kernelMain;

;another infinite loop
_stop: 
    cli
    hlt
    jmp _stop


.section .bss
.space 2*1024*1024; #2MiB

kernel_stack: