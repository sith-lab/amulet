.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 27 
ADD AL, -34 
ADC CL, 24 
CMOVNLE EBX, ESI 
CMOVLE ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
IMUL BX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
ADD RAX, -1409071458 
ADD RAX, -795526374 
IMUL RCX, RCX, 67 
MOVSX RSI, CX 
INC ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -99 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], BX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
MOV DL, -70 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
IMUL RBX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
CMOVNB RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDX 
MOV SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RDX] 
CMOVNP ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
