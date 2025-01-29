.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
ADD AX, -10588 
AND RBX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RBX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDX] 
NEG SI 
CMOVNB AX, CX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -27597 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -88 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -10 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
SBB DX, 10 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -78 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDI 
CMOVNO AX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 115 
CMOVNB CX, CX 
CMOVO SI, SI 
JMP .bb_main.4 
.bb_main.4:
CDQ  
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDI 
CMP EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
