.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], CX 
XCHG RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], SIL 
SBB SIL, -59 
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], SIL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
MOVSX DI, DL 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 63 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
XCHG EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 1 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -55 # instrumentation
ADC RAX, 584144675 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
CMOVS EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
XCHG AL, AL 
IMUL RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
ADC BL, 82 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
CMP BL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RCX] 
CMOVZ BX, DI 
MOV BX, 16574 
CMOVNLE ESI, EAX 
MUL EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
