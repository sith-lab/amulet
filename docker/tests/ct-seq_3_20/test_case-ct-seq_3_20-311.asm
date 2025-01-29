.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 40 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
ADD DX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 5 
CMOVNB BX, DI 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RDI] 
CMP DIL, -58 
CMOVL EDX, EDX 
SBB AL, 127 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -92 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
