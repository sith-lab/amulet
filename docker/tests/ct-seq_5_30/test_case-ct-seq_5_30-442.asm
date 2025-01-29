.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, -1449227295 
LEA RBX, qword ptr [RAX] 
CMOVNB RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RSI] 
MOVZX CX, DL 
ADD RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CMOVNLE BX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], SIL 
CMOVBE EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -18 
ADD EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
OR DL, 1 # instrumentation
SUB AL, -115 
ADD RAX, RCX 
CMOVL BX, DX 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 126 # instrumentation
CMOVNO EDX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
