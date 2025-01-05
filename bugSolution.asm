section .data
array dd 1, 2, 3, 4, 5 ; Example array
array_size equ $-array ; Array size in bytes

section .text
  global _start

_start:
  ; ... some code to set ECX ...

  ; Check if ECX is within bounds
  cmp ecx, 5 ; Check if index is less than 5 (number of elements)
  jl within_bounds

  ; Handle out-of-bounds error
  ; Example: Exit program with error code 1
  mov eax, 1 ; sys_exit
  mov ebx, 1 ; exit code 1
  int 0x80

within_bounds:
  mov eax, [array + ecx*4] ; Access array element safely
  ; ... rest of the code ...
  mov eax, 1 ; sys_exit
  xor ebx, ebx ; exit code 0
  int 0x80