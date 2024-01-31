assume cs:code,ds:datasg

datasg segment
    db '1.file          '
    db '2.edit          '
    db '3.search        '
    db '4.view          '
    db '5.option        '
    db '6.help          '
datasg ends

code segment
start:  mov ax,datasg
        mov ds,ax

        mov bx,2
        mov cx,6
    s:  mov al,[bx]
        and al,11011111b
        mov [bx],al
        add bx,0010h
        loop s

        mov ax,4c00h
        int 21h
code ends
end start