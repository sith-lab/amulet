.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 71 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
CMOVNP DI, DI 
MOV SIL, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -27 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
CMOVNO EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 51 
BSWAP EDI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
