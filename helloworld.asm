SECTION .data
msg db "Hello Juce!",0Ah

SECTION .text
global _start

_start:
        mov edx, 13
        mov ecx, msg
        mov ebx, 1 
        mov eax, 4 ; set sys call to sys_write
        int 80h
