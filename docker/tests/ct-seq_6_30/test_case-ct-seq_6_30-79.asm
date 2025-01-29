.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -69 # instrumentation
CMOVNBE EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -94 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -111 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 6 # instrumentation
SBB AX, 2153 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RCX] 
JNS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
ADD DIL, 61 # instrumentation
CMOVNO RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 122 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -86 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], SI 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -107 # instrumentation
CMOVNP RDX, RCX 
MOVSX BX, SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
DEC RDX 
ADD BL, -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
