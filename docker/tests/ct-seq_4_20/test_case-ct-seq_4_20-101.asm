.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -10 
CMOVNBE ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], -76 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
NEG ECX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -71 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -97 # instrumentation
CMOVNBE RDI, RAX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
CMOVNLE DX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RBX] 
INC BX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
