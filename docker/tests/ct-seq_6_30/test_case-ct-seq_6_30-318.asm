.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 75 # instrumentation
CMOVLE EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 53 
SBB BL, BL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -91 # instrumentation
SBB BL, -62 
CMC  
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDX 
CMOVNLE RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
SUB EAX, -72 
CMOVNO AX, DI 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 9 
CMOVNP EDI, ESI 
SUB DIL, 23 
DEC AX 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 94 
ADC AL, BL 
MUL ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
LOOPNE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, 121 # instrumentation
SBB RAX, -54 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
SUB DX, 71 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 58 # instrumentation
ADC SIL, 79 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -556747060 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
SUB DL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
