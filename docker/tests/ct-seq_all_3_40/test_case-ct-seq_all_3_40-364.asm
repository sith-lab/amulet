.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DI, -35 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -100 
ADD RAX, 1474886137 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 20 
MOVSX RCX, DL 
SETZ BL 
XCHG SI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
SBB RSI, RBX 
TEST AX, -17709 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], -63 
OR EAX, 1030784103 
DEC DL 
SBB EDI, -30 
ADC SIL, 77 
MOVZX SI, CL 
AND ESI, ESI 
AND AX, -19428 
NEG EDX 
XADD BX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDI] 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -17 
SETLE AL 
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDI 
OR SI, -86 
CMP EBX, 108 
AND RCX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RCX] 
XADD DIL, AL 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -42 
SETS BL 
SETNL DL 
CMOVNP RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], AL 
ADC AX, 24579 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
