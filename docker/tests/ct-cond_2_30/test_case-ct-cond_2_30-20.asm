.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -37 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RCX] 
ADC EAX, -212766612 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
MOVZX DI, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -51 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
SBB AX, 7205 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
ADD BL, -97 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RSI 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
ADD SIL, -56 # instrumentation
CMOVNBE RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], -17 
ADD SIL, 61 # instrumentation
MOV BX, SI 
CMOVNP BX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
CMOVS SI, AX 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
