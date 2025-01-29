.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DIL 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX] 
MOVSX EAX, CL 
ADD RAX, -1470067772 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -100 
MOV DX, BX 
SBB RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
XCHG DL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -80 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
ADC EAX, -123 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -42 
ADC BX, 86 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -21026 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RBX] 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -121 # instrumentation
CMOVNS CX, DX 
CMOVNL EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RCX] 
ADD SIL, 0 # instrumentation
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RAX] 
ADD RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
