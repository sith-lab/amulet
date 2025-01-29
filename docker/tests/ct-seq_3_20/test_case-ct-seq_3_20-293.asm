.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
ADD SIL, 104 # instrumentation
CMOVL DI, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 31 
CMOVNS EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
SBB SI, 5 
INC RSI 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
CMP AL, -5 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
CMP EAX, -1543347954 
AND RBX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
