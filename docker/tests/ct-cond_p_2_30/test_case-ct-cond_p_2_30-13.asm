.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
CMOVNBE AX, DI 
MOVZX RBX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
LAHF  
MOV AX, 20750 
CMOVNL EBX, ECX 
CMOVNZ RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 56 
MOVSX RCX, DL 
SUB CL, -42 
XCHG BX, DX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD AX, 421 
IMUL EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -15 
MOV RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
SUB DL, BL 
MOV EDI, 1913831235 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD SIL, -15 # instrumentation
CMOVO EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 26854 
CLD  
MUL EDX 
MOVZX ECX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
