.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
ADD DIL, 43 # instrumentation
ADC DX, DX 
CMOVNS SI, DI 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 94 # instrumentation
ADC ESI, 108 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
INC EDX 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMP EBX, -80 
CLD  
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
DEC AL 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RSI] 
ADD EAX, 2057427771 
CMP EAX, EBX 
SBB AL, -73 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 73 # instrumentation
SBB SIL, 98 
MOVZX RCX, DL 
MOVZX EAX, DL 
CMOVBE ESI, ECX 
MOVSX ECX, AX 
CMOVNS RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
