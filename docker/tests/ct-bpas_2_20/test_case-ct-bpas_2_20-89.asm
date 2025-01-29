.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 91 
MOVZX EDI, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD AX, 81 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 43 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -71 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
ADD EAX, 908481554 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -24 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
