.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XOR RAX, 889346478 
CMOVLE EAX, EDX 
CMOVZ ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RCX] 
SETNLE BL 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
TEST AL, 89 
ADD AL, 13 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 57 
AND BX, 11 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XADD RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], SI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -11465 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ESI 
ADC EDX, 92 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DL 
SBB RBX, RBX 
CWD  
CMOVNLE RAX, RDI 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NOT ECX 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RCX 
ADC CL, AL 
SETP CL 
MOVSX RDI, DL 
NEG EDX 
CMOVO RBX, RCX 
NOT CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADC EAX, -757840397 
IMUL ECX 
MOVZX RDI, DL 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 9 
ADD CL, 63 
CMP DX, -120 
SUB ESI, 125 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
