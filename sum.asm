global _start

section .data
   sum : db 0
   
section .text
_start:
   mov eax,5
   mov ebx,3
   add eax,ebx
   add eax,'0'
   mov [sum],eax
   int 80h
   
   mov eax,4
   mov ebx,1
   mov ecx,sum
   mov edx,1
   int 80h
   
   xor ebx,ebx
   mov eax,1
   int 80h
