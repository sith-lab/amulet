.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 16 
ADC DX, -59 
SBB AX, 31832 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADD DIL, 79 # instrumentation
MOV CL, CL 
CMOVNLE RBX, RDX 
CMP RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
CMP CL, DL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG DIL, DL 
INC AL 
DEC BL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 15 
CMOVNP RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RAX] 
LEA EBX, qword ptr [RDX + RSI + 33831] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
CMOVS RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB AX, SI 
SBB EDX, 119 
CMP EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RSI] 
ADD RAX, -229692503 
CMOVO RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
