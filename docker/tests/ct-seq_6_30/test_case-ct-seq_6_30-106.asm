.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
MOV DIL, DL 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
DEC RCX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
ADD DIL, -95 # instrumentation
XCHG RDX, RAX 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 113 # instrumentation
CMOVO RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], 14 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RAX] 
ADC EBX, -56 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -34 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 97 # instrumentation
CMOVNL AX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDI 
ADC CL, BL 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
CMOVB EBX, EDI 
SUB RAX, 593729067 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 111 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -74 # instrumentation
SBB CX, SI 
SBB SIL, -107 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 53 # instrumentation
SBB ECX, 24 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
INC RDX 
CMOVNL EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
