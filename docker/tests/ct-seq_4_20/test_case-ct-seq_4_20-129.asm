.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
CMOVS RDX, RCX 
CMOVNBE ECX, EDI 
XCHG AX, AX 
AND RBX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RBX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 95 
AND RDX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDX] 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -52 
AND RDX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDX] 
CMP SIL, DL 
STC  
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
MOVSX EBX, CL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX] 
DEC RBX 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
