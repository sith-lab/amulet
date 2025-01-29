.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -33 # instrumentation
CMOVNP EDI, ECX 
CMP ECX, EDX 
CMOVNBE EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CMOVS CX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 30 
SBB SIL, -13 
CMOVL RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], SI 
INC EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDX] 
ADD SIL, -56 # instrumentation
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 107 # instrumentation
SBB CL, BL 
CMP RDI, RDX 
SBB RCX, RAX 
NEG CL 
MOVSX RCX, AX 
CMOVNL CX, DI 
SBB SIL, -110 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RBX] 
MUL RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
CMOVNLE BX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
ADD AX, -10 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 4 
ADD EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
