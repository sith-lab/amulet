.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RSI] 
INC RSI 
MOV RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -52 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
CMP ECX, 98 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RSI] 
SUB EDI, 81 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RCX] 
ADC AX, -1227 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -12 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -89 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
