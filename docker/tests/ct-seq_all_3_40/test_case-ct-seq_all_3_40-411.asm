.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XADD AL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -123 
LEA DX, qword ptr [RSI + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 49 
CMOVZ DX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDI 
MOVSX DI, SIL 
CMOVB CX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
CMP BL, 80 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RDX 
CMP SIL, 113 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
CMOVO RCX, RCX 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -49 # instrumentation
SETNL AL 
MOV DL, BL 
AND CX, CX 
ADC DI, -51 
ADC DL, -31 
CMOVNO RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RCX 
CMOVLE RDX, RCX 
AND RAX, RDX 
SETNB AL 
OR RDX, -26 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AL, -44 
OR RAX, -22 
CMOVNO BX, CX 
XOR BL, BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX], -47 
ADD DIL, 42 # instrumentation
LEA ESI, qword ptr [RCX + RDX + 34524] 
SETNS DIL 
IMUL RSI 
ADD ESI, -124 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RAX] 
XOR CL, -81 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
