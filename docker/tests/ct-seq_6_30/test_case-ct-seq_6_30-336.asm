.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -81 # instrumentation
SBB ECX, -49 
XCHG AX, AX 
ADD AL, -7 
JL .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
MOV AL, -92 
BSWAP RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -16 
IMUL RAX, RCX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 53 # instrumentation
CMOVNLE CX, SI 
MOVSX RBX, BL 
CMOVP RCX, RDX 
SUB ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], SI 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], SI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
ADD DIL, 20 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
LEA BX, qword ptr [RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 26 
CMOVO RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RAX] 
CMP AL, -75 
CMP EAX, EDX 
CMOVNL EBX, ESI 
SUB RAX, 1951572066 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
