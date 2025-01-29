.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -123 # instrumentation
CMOVNB ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
CMOVO RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
SUB RAX, 987520639 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -77 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 82 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 108 # instrumentation
CMOVNO RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMOVL BX, BX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
NEG BX 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -107 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
