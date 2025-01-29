.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
LEA CX, qword ptr [RBX + RDX] 
SBB EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], SIL 
AND RCX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], BL 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 42 
MUL RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX] 
CMOVO EDI, EDI 
INC SI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
