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
    number1 dd 35   ;declarando a primeira variável
    number2 dd 25   ;declarando a segunda;

.code
start:
    mov eax, number1 ;jogando valor do number1 em eax 
    mov ebx, number2 ;jogando o valor do number2 em ebx

    cmp eax, ebx ;comparando os dois 
    jge imprime_resultado; pulando para imprime resultado
    mov eax, ebx ; se não, move o valor de ebx para eax
    

imprime_resultado:
    printf("o resultado de EAX foi: %d\n", eax)
    invoke ExitProcess, 0
end start
