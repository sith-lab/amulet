.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RCX] 
MOVSX DX, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
ADD DIL, -89 # instrumentation
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
SBB CL, AL 
MOVZX RBX, DIL 
AND RSI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RBX] 
DEC AL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -19 # instrumentation
CMOVNO ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], -78 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI], -2 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
