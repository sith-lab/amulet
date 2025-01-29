.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP EBX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 13 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RBX 
SUB DIL, -57 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDX] 
CBW  
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
CMOVLE ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RCX] 
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
MOVSX RDX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
