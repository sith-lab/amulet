.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 104 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], CX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDX] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 9 
CMP EAX, -1834878012 
AND RSI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RSI] 
LEA DX, qword ptr [RAX + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -11 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX SI, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
CMOVNS SI, CX 
CMOVNO BX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
