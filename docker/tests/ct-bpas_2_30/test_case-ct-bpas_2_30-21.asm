.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RAX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RCX] 
ADD DIL, 31 # instrumentation
CMOVNLE DI, SI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDX] 
CMOVNZ EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 117 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RAX] 
SBB RDI, 82 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
CMOVNS RDX, RCX 
SBB EBX, ECX 
SBB AL, 14 
SBB AX, 5968 
CMOVZ EAX, EDI 
CMOVP RSI, RAX 
MOVZX RAX, BL 
MOVZX CX, DL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -114 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
