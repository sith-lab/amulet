.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
TEST RAX, 2145309538 
CMOVNLE RAX, RDI 
ADC DIL, 36 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
SETNBE AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
IMUL BX, AX, 75 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -128 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
ADD AL, 15 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RCX] 
TEST RAX, -1402240797 
CMOVB EDX, EDI 
OR ESI, EBX 
OR SIL, 75 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], -71 
CMOVNP EDI, EAX 
XOR AL, -111 
SETNP CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
CMOVL EAX, ESI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AX, -26408 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ESI 
ADD DIL, -50 # instrumentation
LAHF  
ADC DX, CX 
CMOVNB RDX, RBX 
OR AL, -72 
XOR EDI, 28 
AND RDX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 56 
SETNO BL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 50 
SETNO DL 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
ADD EAX, 1203498372 
SETZ AL 
SBB EAX, 550680640 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
