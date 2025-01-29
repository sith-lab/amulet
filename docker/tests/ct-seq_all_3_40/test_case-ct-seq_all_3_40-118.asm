.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
SUB ESI, 103 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
SBB ESI, 74 
CMOVNZ DX, AX 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
SETNP DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -1 
ADC AL, AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP BX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDI 
MOV RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 9 
XADD RDI, RCX 
IMUL RBX, RBX, 42 
NEG EDI 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 1143983805 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
SETZ CL 
IMUL RAX, RDX, -71 
MOVZX EBX, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND BL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DL 
CMOVNZ DX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -1880 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], EAX 
SUB DL, -93 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -47 
SETL DL 
TEST EAX, 437289645 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
