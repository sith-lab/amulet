.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA SI, qword ptr [RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], -60 
ADD AL, CL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
CMP RDI, RCX 
IMUL DX 
SUB EBX, 86 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -113 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
MOV SI, DX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDX] 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
IMUL CX, DX, -95 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
MOV AL, 4 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDI 
ADC RAX, -1771233983 
CMOVNS DX, SI 
MOV AL, 38 
MOV DL, AL 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
STC  
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
