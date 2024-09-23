.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\msvcrt.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\msvcrt.lib
include \masm32\macros\macros.asm

.data 
    b dd 20
    varC dd 30
    a dd ?
    

.code
start:
    mov eax, b
    add eax, varC
    add eax, 100
    mov a, eax
    printf("O valor do somatorio eh a = 20 + 30 + 100 = %d", a)
    invoke ExitProcess, 0

end start