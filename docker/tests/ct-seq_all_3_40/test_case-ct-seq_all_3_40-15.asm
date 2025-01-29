.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, -122 # instrumentation
SETS DL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RSI 
ADD DIL, -112 # instrumentation
ADC CL, SIL 
XOR DX, AX 
SBB EAX, -1747149511 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
ADD SIL, -52 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
NEG EDI 
SETNZ AL 
AND RAX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RAX] 
CMPXCHG EDI, EDX 
CMOVNLE DX, CX 
BSWAP EDX 
JMP .bb_main.1 
.bb_main.1:
XOR AL, 27 
MOVSX EBX, DX 
INC RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], 15 
INC SI 
SUB EDI, 102 
AND RBX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RBX] 
CMOVP ECX, ESI 
SETNB AL 
XOR AL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], AX 
XADD EBX, ESI 
ADD AX, 26862 
CMP DL, 50 
STC  
DEC SI 
NOP  
SBB RBX, RDI 
ADC CL, BL 
SBB AL, 47 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
IMUL RDI 
SBB RAX, -238930201 
NEG RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
