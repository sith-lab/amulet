.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
NEG ECX 
ADC AL, 35 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDI 
ADD ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
ADD EAX, -1859227073 
CMOVNLE AX, DI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
DEC AL 
CMP AL, 55 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -53 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVL RAX, RAX 
MOVSX RBX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -636863207 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
