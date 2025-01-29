.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EBX 
SBB EAX, 1682901786 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], SIL 
CMP BL, -7 
ADD RSI, -26 
CMOVZ SI, DI 
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
ADD EAX, 271604311 
CDQ  
MOVZX RSI, CX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 47 
OR DI, 0b1000000000000000 # instrumentation
BSR AX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -25 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -119 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
ADC EAX, 281681554 
CMP DI, SI 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], SI 
CMP ECX, 23 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 10 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
CMOVL BX, SI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 104 
IMUL DL 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
