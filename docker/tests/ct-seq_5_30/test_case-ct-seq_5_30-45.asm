.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 8 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -86 
IMUL BL 
ADC AL, 84 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RBX] 
CMOVNP RCX, RSI 
SBB EAX, 1045392603 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
CMOVO RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDX] 
MOVZX EAX, CL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 79 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
ADD AX, -17754 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
IMUL EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 101 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
MOVZX AX, BL 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMP DL, CL 
AND RSI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RSI] 
CMP RCX, RBX 
SBB DIL, -27 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX], -46 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
CMOVNLE EDI, ECX 
CMP AL, BL 
SUB SIL, 116 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
