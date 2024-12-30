

;Write a program that has an array of numbers (with both positive and negative values) ,
; displays the total no of negative numbers from the array.

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "Assembly Proc Call ",0



.code
asmfunc PROC p1:DWORD, p2:DWORD
    

    mov ebx,0
    mov ecx,8                                   ;Loop counter
    mov esi,p1
    mov edi,p2

    Negative:                                   ;Label for loop
    mov eax,[esi]
    test eax,8000h                              ;Testing condition
    pushfd                                      ;Saving Flags
    add esi,4                                   ;Moving to next element
    popfd                                       ;Poping elements again
    JNZ NegNum                                  ;Jump for counting number of Negative numbers
    ReCheck:                                    ;Return back to check loop condition
    loop Negative

    jmp Final                                   ;Jump to final results

    NegNum:
    inc ebx
    jmp ReCheck

    Final:
    mov [edi],ebx                               ;For displaying in c
    


    
    ret
asmfunc ENDP
end