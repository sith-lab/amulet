.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
SBB DL, BL 
CMOVNBE EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
ADC AX, -24870 
DEC CL 
CMOVNP RSI, RSI 
MOVSX RDI, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
SBB DX, 124 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RSI], 67 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DIL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RSI] 
CMOVNS EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1634357903 
XCHG RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 94 
CMOVNO EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 36 
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RAX] 
SUB EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 94 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CMOVNBE EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
