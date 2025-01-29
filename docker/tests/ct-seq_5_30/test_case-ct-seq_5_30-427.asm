.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
IMUL ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
MOV DIL, -14 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
ADD EBX, -25 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MUL DI 
SUB CL, -17 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EBX 
ADD SIL, -21 # instrumentation
CMOVNS RBX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DI 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
IMUL ESI 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RCX] 
XCHG RDI, RAX 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB DIL, 26 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
CMOVNP RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -86 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 73 # instrumentation
CMOVZ RBX, RAX 
SBB EAX, 733224088 
ADD SI, CX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDI] 
ADD DIL, -43 # instrumentation
CMOVNL DI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
