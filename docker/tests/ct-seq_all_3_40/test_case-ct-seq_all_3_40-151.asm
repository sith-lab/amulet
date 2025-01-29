.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AX, 31011 
AND AX, 11302 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
ADD DIL, 74 # instrumentation
SETLE BL 
SUB AL, CL 
ADC AX, -1387 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP DI, DX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
TEST EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RCX] 
XOR RAX, 993329436 
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
NEG EDX 
SETP CL 
SUB BL, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
CMPXCHG RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
CMP EAX, 2086402935 
MOVSX DX, DL 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], DIL 
CMOVNO DX, AX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
ADD SIL, -2 # instrumentation
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV DL, 78 
XOR AL, BL 
MOV SI, DX 
MOV DX, DI 
LEA RCX, qword ptr [RBX] 
XCHG RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 122 
MOVSX RDX, CX 
CMOVNO AX, AX 
SETS DL 
CMPXCHG DL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 31365 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 103 
ADD SIL, -93 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
