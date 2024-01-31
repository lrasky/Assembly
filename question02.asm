assume cs:code,ds:datasg

datasg segment
    db 'welcome to masm!'
    db '................'
datasg ends

code segment
start:  mov ax,datasg
        mov ds,ax

        mov cx,8
        mov bx,0
    s:  mov ax,[bx]
        mov [bx+16],ax
        add bx,2
        loop s

        mov ax,4c00h
        int 21h
code ends
end start