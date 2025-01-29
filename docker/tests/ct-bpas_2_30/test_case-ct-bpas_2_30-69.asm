.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EAX, 10 
CMOVNZ RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DIL 
MUL EDX 
ADD AL, -65 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
ADC EDX, EAX 
MOVSX ECX, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 93 # instrumentation
CMOVNL ESI, EAX 
MOVSX RBX, AL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
CMOVNP ESI, EAX 
MOV ESI, 1593167872 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDI 
XCHG AL, AL 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 24 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
SBB RDX, RAX 
SBB AL, -89 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
ADD AL, AL 
MOVZX RDI, SIL 
ADC DIL, 27 
CMOVB BX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
