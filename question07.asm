data segment
    db 'ibm             '
    db 'dec             '
    db 'dos             '
    db 'vax             '
data ends

stacksg segment
    dw 0,0,0,0,0,0,0,0
stacksg ends

code segment
start:  mov ax,data
        mov ds,ax

        mov cx,4
        mov si,0
    s1: push cx
        mov cx,3
        mov bx,0
    s:  mov al,[bx+si]
        and al,11011111b
        mov [bx+si],al

        inc bx
        loop s

        add si,10h
        pop cx
        loop s1

        mov ax,4c00h
        int 21h
code ends
end start