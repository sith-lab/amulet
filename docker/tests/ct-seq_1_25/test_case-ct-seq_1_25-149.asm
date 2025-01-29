.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EAX, 344230700 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ESI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -101 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -44 
ADC DL, -83 
SBB ESI, -72 
SBB AL, 26 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDX] 
CMOVNLE CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RSI] 
MUL BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RAX] 
INC DL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
