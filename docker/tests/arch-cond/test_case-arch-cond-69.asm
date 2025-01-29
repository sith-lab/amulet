.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 87 # instrumentation
CMOVNO RSI, RBX 
ADD EDI, 41 
MOV SIL, 35 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], DL 
SBB RCX, 26 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RSI] 
SETNO DIL 
CMP BL, DL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -53 
DEC DIL 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
CMOVBE EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX], -43 
OR RCX, 99 
NEG AX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMPXCHG RBX, RCX 
CMOVNS EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -3 
BSWAP ECX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], CL 
INC DI 
XCHG RCX, RCX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -26 # instrumentation
SETS DL 
MOV RCX, 8733270634684513549 
ADC BX, CX 
CMOVL EDX, EDI 
SBB SI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], ECX 
CMOVNZ DI, BX 
XOR RAX, 32817369 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RSI] 
XOR RSI, RDI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
