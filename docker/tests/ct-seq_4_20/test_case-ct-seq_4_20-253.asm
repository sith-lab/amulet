.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDI, DX 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
MOVZX EAX, BL 
SBB BL, AL 
CMOVNB EBX, EBX 
BSWAP RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 59 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX DI, DL 
NEG BL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
SUB RAX, 1401457337 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 88 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -72 # instrumentation
CMOVNBE BX, BX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RBX] 
CMOVNL RBX, RCX 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
