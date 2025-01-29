.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 14 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], BX 
MOV ESI, ECX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -46 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDI] 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
IMUL SI 
CMC  
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 99 
JMP .bb_main.3 
.bb_main.3:
SUB RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDX] 
SBB AX, -27494 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
