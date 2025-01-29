.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -112 # instrumentation
ADC AL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDX] 
MOVZX ESI, BL 
JMP .bb_main.1 
.bb_main.1:
NEG EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], SI 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 85 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
BSWAP EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDX 
MOVSX EDX, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
CMOVB ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RSI 
MOV EDX, -1327738656 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
