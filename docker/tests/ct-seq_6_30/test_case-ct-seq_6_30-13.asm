.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
SBB DX, -75 
CMOVNBE CX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RCX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
IMUL EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDI] 
XCHG CL, DIL 
MOV AX, BX 
JNL .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
BSWAP ECX 
MOVSX CX, BL 
SUB SIL, 23 
IMUL RSI, RSI 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
ADD EAX, -927194921 
CMOVNP RAX, RDX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -112 # instrumentation
CMOVNL RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1819257012 
MUL CL 
ADD DIL, 54 # instrumentation
CMOVNB RAX, RDX 
XCHG CX, SI 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, -41 # instrumentation
ADC AX, 27599 
CMOVB DX, BX 
ADC DX, 124 
MOV BL, 6 
CMOVNBE EDX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
