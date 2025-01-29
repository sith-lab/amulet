.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 80 # instrumentation
CMOVNS CX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -30 
AND RAX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RAX] 
CMOVB ECX, EAX 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -71 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -115 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
ADC DIL, -51 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 110 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DX 
MOVSX RDX, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 22 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
