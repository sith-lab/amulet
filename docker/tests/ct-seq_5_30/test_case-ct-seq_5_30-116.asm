.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -89 # instrumentation
SBB SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
CMOVNO RCX, RCX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL ECX 
CMP SI, -65 
CMOVLE RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -82 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
IMUL BX, AX, 98 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
CMOVS RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
JMP .bb_main.3 
.bb_main.3:
IMUL DX 
NEG RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RCX] 
SBB SIL, 123 
SBB SIL, -126 
CMOVLE RBX, RDI 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -83 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], SI 
XCHG SI, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 100 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
