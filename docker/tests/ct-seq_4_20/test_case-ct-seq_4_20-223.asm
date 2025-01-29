.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
MUL BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 99 
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -63 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
ADC EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RSI], 80 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 34 # instrumentation
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RAX 
MUL CX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
