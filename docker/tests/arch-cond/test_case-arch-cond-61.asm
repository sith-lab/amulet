.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -23 # instrumentation
ADC CX, DI 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI], 57 
ADD SIL, 87 # instrumentation
XCHG DI, AX 
SETNS DIL 
CMOVBE DX, CX 
STC  
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDI] 
XCHG RDX, RSI 
MOVSX RBX, BL 
XOR DX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 16 # instrumentation
ADC RAX, -403977550 
OR AX, -19526 
INC EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 88 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], -90 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
XOR RDX, -62 
MUL CL 
SETNB AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
MOVSX SI, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], DL 
TEST AL, 3 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], 111 
SUB RDX, 44 
CMOVO RAX, RBX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  # instrumentation
AND EAX, -2090201645 
DEC ESI 
DEC BX 
IMUL EBX, EDI, -70 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RSI] 
SETNLE BL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
ADD DIL, 11 # instrumentation
CMOVL CX, DI 
XOR RAX, -1997581652 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
