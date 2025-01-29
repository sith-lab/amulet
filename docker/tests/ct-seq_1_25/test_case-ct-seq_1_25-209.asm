.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
MOVSX RDI, AL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 60 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RAX] 
CMOVNB ESI, EDX 
CMOVNP SI, DX 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
CMOVP EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
ADD RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
SUB AX, 22994 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 97 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -2 
CMOVNP EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
ADD SIL, -80 # instrumentation
XCHG EDI, EAX 
SBB BL, SIL 
SBB EBX, -90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
