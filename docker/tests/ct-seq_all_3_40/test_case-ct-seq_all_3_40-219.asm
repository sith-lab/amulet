.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ESI, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RBX] 
SUB RSI, RAX 
SUB EAX, 1932655650 
SUB AX, 28375 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], DI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
CMP EAX, -1172399185 
XOR BL, SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
IMUL DI, DI, 89 
ADD DIL, 112 # instrumentation
SETBE AL 
CMOVBE RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RBX] 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -107 
NEG CL 
SETNB BL 
MOVSX SI, CL 
MOV DX, DI 
ADC RDI, RDX 
ADC RDI, -113 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX] 
ADD DIL, -34 # instrumentation
CMOVS EDX, EDI 
CMOVO EDX, EBX 
CMOVS RCX, RDI 
AND AL, 18 
XCHG DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
