.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 106 
CMOVNZ RDI, RDX 
CMOVNO RCX, RAX 
CMOVNLE EDI, ESI 
CMOVL RCX, RAX 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, -101 # instrumentation
LEA ESI, qword ptr [RDX + RBX] 
SBB DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDX] 
SBB DIL, 101 
JMP .bb_main.2 
.bb_main.2:
SUB BL, AL 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
CMOVL AX, AX 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -464720806 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
CMOVLE EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 50 
SBB RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -58 
DEC AL 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 101 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
CMC  
NEG RAX 
MOVSX EBX, BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX], 8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
