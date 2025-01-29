.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP RAX, 866693427 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -1 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -81 
MOV DX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
CMP RBX, RAX 
NEG DL 
CMOVNP ECX, EAX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RAX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -86 # instrumentation
CMOVL EBX, EDX 
SUB EAX, 488029690 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -63 
CMOVLE AX, BX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
ADD DIL, 53 # instrumentation
CMOVBE ECX, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DIL 
CMOVBE DI, CX 
CMOVNP BX, BX 
XCHG DIL, BL 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DI 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CWDE  
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
SBB RDX, -109 
MOVSX EAX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
