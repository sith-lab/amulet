.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RBX 
NOT EAX 
SUB AL, 71 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], DI 
CMOVS SI, DI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 89 # instrumentation
CMOVLE BX, SI 
MOVZX RCX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RAX] 
INC RDI 
OR AX, -8423 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -107 # instrumentation
SETNB SIL 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDX 
MOVZX RBX, SI 
AND RDX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDX] 
CMOVNBE SI, DX 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ECX 
AND RBX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
TEST EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
MUL RCX 
SUB RCX, RBX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
CMP DL, -53 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], 104 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
OR RDI, -97 
OR DL, DIL 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
OR SIL, -3 
SBB DIL, -118 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
