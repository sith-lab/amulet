.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], 1763707201 
SETNP DIL 
CMOVL ESI, EAX 
NEG RDI 
MOV EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RCX] 
MOVSX RSI, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDI 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDI 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RDI 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
ADD SIL, -87 # instrumentation
ADC DL, CL 
OR EAX, 705638838 
CMOVLE RAX, RAX 
SETNO BL 
CMOVB RAX, RCX 
SUB EBX, ECX 
BSWAP EBX 
CMOVZ SI, BX 
XOR ESI, 75 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
MOVZX RDX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RSI] 
AND RCX, 22 
ADC RSI, RAX 
CMC  
SAHF  
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
SBB DI, AX 
CMOVNZ ECX, EDI 
TEST AL, 49 
AND RSI, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
CMOVNLE RAX, RBX 
MOVZX EBX, AL 
OR DIL, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], ESI 
ADD AX, -95 
CMOVP RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
