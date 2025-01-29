.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EDX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
XCHG DIL, CL 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 111 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -38 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
CMOVP EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
MOV EDI, -773312418 
JMP .bb_main.2 
.bb_main.2:
MOVZX EBX, SI 
CMP AL, BL 
CMP RAX, -919883233 
CMOVNP EAX, EDX 
CMP RAX, -1170740928 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RCX] 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
CMOVNB RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 20 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 30 # instrumentation
ADC CX, -3 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ESI 
CMOVP RBX, RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -17 
ADC AL, 110 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
