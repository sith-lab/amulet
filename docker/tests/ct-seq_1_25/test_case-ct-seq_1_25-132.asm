.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RAX] 
SBB EDI, EAX 
XCHG RSI, RAX 
ADD ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -26 
AND RCX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -94 
CMP EAX, -1884422860 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 103 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
SUB RCX, RBX 
CLC  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 18 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -26 
CMOVL RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
