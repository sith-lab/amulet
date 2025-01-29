.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RBX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
CMP SI, 31 
MUL EAX 
LEA EAX, qword ptr [RSI + RDX + 43696] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RCX 
SBB RAX, 526828934 
CMOVP SI, BX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -48 
CMOVO RDX, RBX 
SETNB AL 
CMP AX, -12574 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
SUB SIL, -61 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RCX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RBX] 
SBB DIL, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
CMPXCHG SIL, BL 
ADD DI, -48 
CMOVS RDX, RAX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
CMOVNP RAX, RDI 
ADC EAX, 283981513 
SETO SIL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
AND EAX, 82034261 
SETNL CL 
DEC AX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -1507158375 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RAX] 
IMUL DX 
NEG BL 
CMOVLE RDX, RSI 
ADD RAX, -1549277953 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
