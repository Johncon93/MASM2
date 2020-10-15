; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	array DWORD 5,10,15,20

.code ; code segment

main PROC ; main procedure
lea ebx, array;
mov ecx, 8;
mov esi, 0;
mov eax, [ebx + TYPE array*0]
mul ecx;
mov [ebx+TYPE array*0], eax
inc esi ;
cmp esi, 4
  INVOKE ExitProcess, 0

main ENDP ; exit main procedure
END main  ; stop assembling