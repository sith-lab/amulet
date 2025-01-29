.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RAX] 
DEC BL 
CMOVO RSI, RDX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
AND RSI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -64 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -114 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RAX] 
XCHG BX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
