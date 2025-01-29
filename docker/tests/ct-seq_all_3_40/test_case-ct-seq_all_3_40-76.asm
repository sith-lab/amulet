.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
SUB RDI, 22 
MUL CX 
ADD DIL, 71 # instrumentation
CMOVL EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RDI 
SUB AX, 27198 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], BX 
TEST EBX, EAX 
CMP DIL, -39 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
SETNL SIL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND AL, DL 
OR EBX, -120 
MUL AL 
ADD SIL, -128 # instrumentation
CMOVNP RAX, RAX 
DEC DI 
SUB RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -79 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -104 
AND RAX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RAX] 
XOR EBX, 0 
CMOVO RSI, RSI 
XOR RCX, -13 
SUB ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 76 
SBB RDI, -91 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -65 # instrumentation
SBB BX, -4 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
SBB EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDX] 
SBB AL, DL 
CMOVNL BX, DX 
SBB DIL, -30 
ADC RAX, 49411224 
CBW  
SETO DIL 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
CMP RAX, -94 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
