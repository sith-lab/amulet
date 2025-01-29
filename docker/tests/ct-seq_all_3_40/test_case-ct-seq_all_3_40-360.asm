.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
NEG CX 
SETZ BL 
SETNBE BL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -127 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -19893 
SETL DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EBX 
ADD RAX, -1306058536 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
SBB DX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], BL 
SBB CL, 29 
JMP .bb_main.1 
.bb_main.1:
TEST SIL, -62 
XOR RAX, -1566979455 
CMP AX, 9558 
CMOVBE AX, DX 
ADD DIL, AL 
CMOVB ECX, ESI 
IMUL CL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 44 
NEG EAX 
MOV EDI, EDX 
NEG RDX 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], BX 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
AND RAX, RAX 
SBB BX, 116 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
DEC EAX 
SUB DI, CX 
CMOVNB EBX, EBX 
XOR ESI, -50 
AND RSI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RSI] 
CMOVZ RDX, RAX 
AND DL, 114 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
