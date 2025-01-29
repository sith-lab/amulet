.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
MUL EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 59 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
ADD DIL, -7 # instrumentation
LAHF  
AND RCX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
ADD RSI, 44 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDX 
NEG EBX 
STD  
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMOVNLE RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
ADD EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 26 
CMOVB CX, AX 
AND RSI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -10 
SBB RDI, RBX 
SUB RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
