.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 100 # instrumentation
CMC  
CMOVNS EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RCX] 
SBB BL, -5 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RBX 
AND RAX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -319952437 
BSWAP RDX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 19 
CMOVBE BX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -63 
ADD EDX, EDI 
SUB ESI, 32 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
