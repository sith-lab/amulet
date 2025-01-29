.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 14 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDI] 
CMP BX, -121 
MOV RDI, -845853501351818978 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
MOV DIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 62 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -87 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RSI] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
