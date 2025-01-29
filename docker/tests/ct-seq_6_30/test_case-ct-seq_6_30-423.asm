.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -85 # instrumentation
SBB AX, 32104 
CMOVNL CX, BX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
SBB AL, 104 
ADD ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], 60 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
JL .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -82 # instrumentation
ADC AL, 54 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RDI] 
CMOVO RDI, RAX 
IMUL ECX, EBX 
ADD DIL, 99 # instrumentation
CMOVNP RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RBX] 
ADD DIL, -16 # instrumentation
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RSI] 
CMOVNLE RSI, RDX 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -23 
CMOVNBE ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
