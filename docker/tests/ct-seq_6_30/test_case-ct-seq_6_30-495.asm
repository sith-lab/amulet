.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
ADC EBX, -113 
SBB BL, SIL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
LEA AX, qword ptr [RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
XCHG EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], -33 
MUL SIL 
SBB DI, 19 
JO .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -71 # instrumentation
ADC SI, DI 
ADC EAX, -589237616 
AND RDX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], -45 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDI] 
SUB BX, AX 
CMOVNBE EDX, EDX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RCX 
IMUL BL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RBX] 
ADD RBX, RAX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 98 # instrumentation
INC AL 
ADC EAX, 951406097 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDX 
CMOVNB DI, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -101 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
