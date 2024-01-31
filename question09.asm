assume cs:code,ds:datasg,ss:stacksg
datasg segment
    db '1.display       '
    db '2.brows         '
    db '3.replace       '
    db '4.modify        '
datasg ends

stacksg segment
    dw 0,0,0,0,0,0,0,0
stacksg ends

code segment
start:  mov ax,stacksg
        mov ss,ax
        mov sp,10h

        mov ax,datasg
        mov ds,ax

        mov cx,4
        mov si,0
    s1: push cx
        mov cx,4
        mov bx,0
    s0: mov al,[bx+si+2]
        and al,11011111b
        mov [bx+si+2],al
        inc bx
        loop s0
        add si,10h
        pop cx
        loop s1
        

        mov ax,4c00h
        int 21h
code ends
end start