.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
CMOVS SI, SI 
AND RCX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 43 
ADC AX, -35 
CMP AL, -17 
ADD AL, 4 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
NOT DL 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], BX 
AND EAX, 50 
SUB RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
ADC EDX, -53 
CMPXCHG RCX, RAX 
CMOVNL RDI, RSI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 51 # instrumentation
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], -28 
ADC EAX, 777549264 
AND RSI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RSI] 
ADD AL, -53 
SETNS DL 
AND RDI, RDI 
TEST SIL, 59 
AND RDI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDI] 
AND RAX, RSI 
ADC DL, AL 
SAHF  
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], -37 
BSWAP EBX 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], 89 
IMUL RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], AX 
INC RDX 
SBB SIL, SIL 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
