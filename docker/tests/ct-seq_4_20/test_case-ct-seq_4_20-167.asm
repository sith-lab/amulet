.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -25 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
SUB AX, 31308 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -86 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -46 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDI] 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 68 # instrumentation
ADC RAX, -430065065 
SUB RSI, -82 
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
