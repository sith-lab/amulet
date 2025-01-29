.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -75 # instrumentation
ADC BX, -98 
SUB DIL, 40 
ADC AL, -20 
ADC AX, 15 
CMOVNO RDX, RBX 
CMPXCHG BX, CX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 95 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
OR AL, -41 
ADD SIL, -86 # instrumentation
CMOVZ RAX, RDI 
SETB CL 
SETNLE AL 
LAHF  
ADC AL, 3 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND CL, -76 
JMP .bb_main.1 
.bb_main.1:
CMP AX, 2844 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], 102 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RBX 
CMOVZ EBX, EBX 
SBB RAX, -2022124373 
CMP AX, 12371 
CMOVNBE EDX, EAX 
ADD SIL, -35 
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DI 
SETBE BL 
CLD  
CMOVNS RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
CMOVNP EAX, EDI 
SETNBE DL 
AND CX, DX 
SETNLE BL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVSX EDI, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
MOVSX RCX, AX 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -60 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
