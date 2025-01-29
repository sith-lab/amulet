.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -114 # instrumentation
SBB CL, -87 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 49 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RSI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BX, SI 
SUB RAX, -1758411109 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
MOVSX RDI, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -95 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DI 
AND RAX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RAX] 
SBB ESI, -20 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 109 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
