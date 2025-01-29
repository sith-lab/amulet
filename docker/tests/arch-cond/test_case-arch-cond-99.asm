.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RSI 
CMPXCHG BL, DL 
MOV BL, BL 
OR RBX, RDI 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
TEST AL, 39 
TEST EAX, -201410128 
SBB EBX, -124 
SBB BL, -109 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
ADD DIL, 26 # instrumentation
ADC DL, DL 
LEA SI, qword ptr [RCX + RBX + 39283] 
IMUL EAX, EDI, -5 
TEST CL, -70 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
CMOVBE SI, DX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
CWD  
AND EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ESI 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD RAX, 407495987 
IMUL BL 
ADD SIL, 6 # instrumentation
CMOVNBE RAX, RCX 
AND AX, 9429 
SUB RSI, 59 
ADC RDX, RDX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 69 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
TEST RAX, 186349506 
SBB DIL, -112 
CMOVBE EAX, EBX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
ADD AX, -97 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RCX] 
MOV BL, 3 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DIL 
SUB CL, SIL 
XCHG AL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
