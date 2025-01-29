.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], BX 
SBB BL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], CL 
AND EDX, -6 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RAX] 
SBB AL, 76 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RSI] 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EAX 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 81 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
CMOVNO DX, SI 
OR RAX, 1651932430 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -12 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
NOT ESI 
INC ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], 37 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
IMUL DI 
AND SIL, 98 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
MOV RCX, 5597664929322679898 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -109 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 13255 
CMP DX, BX 
XCHG DIL, AL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -24 # instrumentation
SBB EAX, 98374828 
SETNZ BL 
SETNP DL 
SBB RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
DEC ESI 
CMP RCX, -18 
CMOVP EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RAX 
CMOVNB RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
