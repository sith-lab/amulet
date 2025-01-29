.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
XCHG RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], BX 
OR DL, 1 # instrumentation
SBB EDI, EDI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
ADD SIL, -43 # instrumentation
SBB CL, DL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 72 
IMUL RDX, RAX, -56 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -55 
MOVSX RAX, CL 
BSWAP RDI 
IMUL ECX, EBX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 79 # instrumentation
SBB RAX, RCX 
MOV AX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
SBB SIL, 37 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], CX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
CMP ECX, -116 
SUB EAX, 195081211 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -85 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 127 # instrumentation
ADC RCX, 53 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
SUB SIL, -67 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
IMUL ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1759874923 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
