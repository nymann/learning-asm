SECTION .data
msg db "Hello World!",0Ah

SECTION .text
global _start

_start:
        mov edx, 13
        mov ecx, msg
        mov ebx, 1 
        mov eax, 4 ; set sys call to sys_write
        int 80h

        mov ebx, 0 ; set exit code
        mov eax, 1 ; set sys call to sys_exit
        int 80h
