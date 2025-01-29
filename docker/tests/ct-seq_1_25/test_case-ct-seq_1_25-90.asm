.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
MOVSX DI, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -30 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDI 
CMOVNP RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
IMUL RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
MOVSX RBX, BX 
CMOVNB RAX, RDX 
INC BL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
MOVZX BX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1880423027 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 72 
ADC BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -17 
IMUL CX, BX, -64 
ADD DIL, 7 # instrumentation
CMOVNLE EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
