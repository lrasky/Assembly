assume cs:code,ds:datasg
datasg segment
    db 'BaSIC'
    db 'iNfOrMaTiOn'
datasg ends

code segment
start:  mov ax,datasg
        mov ds,ax
        
        mov bx,0
        mov cx,5
    s:  mov al,[bx]
        and al,11011111B
        mov [bx],al
        inc bx
        loop s

        mov cx,11
    s1: mov al,[bx]
        or al,00100000B
        mov [bx],al
        inc bx
        loop s1

        mov ax,4c00h
        int 21h
code ends
end start