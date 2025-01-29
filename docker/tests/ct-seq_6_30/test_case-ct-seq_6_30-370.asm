.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, EDI 
CMOVZ RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
ADD BL, AL 
CMOVO ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
ADD SIL, 65 # instrumentation
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
CMOVNBE ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -2 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RBX 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CMP BX, BX 
MUL DX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDX] 
ADD SIL, -23 # instrumentation
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -33 # instrumentation
CMOVNZ EBX, EDX 
MOVZX EAX, AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDX] 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 124 
SBB SIL, -56 
ADD AX, -19602 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -121 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], 85 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDX] 
MOV DL, -17 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
