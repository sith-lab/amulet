.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 41 
ADC RAX, 626631190 
ADD CL, -40 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], SI 
STC  
BSWAP RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -24 # instrumentation
CMOVNL RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 107 
MUL AL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMOVLE RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
SBB EAX, 784663959 
CMOVBE EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -56 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
