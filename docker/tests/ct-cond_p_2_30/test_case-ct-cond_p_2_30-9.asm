.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -20 
CMC  
SUB RAX, -1121675986 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
XCHG BX, BX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 108 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDI 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
CMP EDX, -71 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RCX] 
SUB CL, AL 
CMOVS DX, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 120 
LEA RDX, qword ptr [RAX] 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
SBB AL, -107 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RBX] 
SBB EAX, 1072782125 
SUB CX, -24 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RBX] 
CMOVNO EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
CMOVL EDI, ECX 
MOVSX CX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
