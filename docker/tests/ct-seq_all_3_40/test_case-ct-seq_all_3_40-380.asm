.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], CL 
XCHG ESI, ECX 
MOV EBX, 892629312 
CMP CL, DL 
SBB AL, 76 
AND AX, -20319 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 60 # instrumentation
CMOVNBE RDX, RBX 
NOT BL 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND SIL, -122 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 62 
STC  
XOR EAX, EDI 
CMP AL, -91 
CDQ  
CMOVL RCX, RCX 
ADC SIL, 0 
ADD CL, -48 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], CX 
CMOVP DX, DI 
AND AL, 1 
MOVSX RDX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], RAX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RAX, 578422417 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
AND DX, 4 
MOVZX CX, AL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND CX, 54 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XOR RAX, -1184793741 
AND RAX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -6 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -51 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
ADD BL, BL 
XOR BX, -48 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
