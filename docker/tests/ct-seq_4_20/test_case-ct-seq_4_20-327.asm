.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
CMP EAX, 1368266930 
XCHG ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
ADD CL, AL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 105 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -96 
CMOVNL EDI, ESI 
SUB DL, -61 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 75 # instrumentation
CMOVNP RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
