.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
CMOVLE CX, DX 
CMOVNLE AX, CX 
JMP .bb_main.1 
.bb_main.1:
SUB CX, BX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 86 
MOVSX SI, BL 
CMP AX, -29159 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDI 
CMOVB DI, BX 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOVZX RDI, CX 
AND RBX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RAX] 
MOV RSI, RCX 
JMP .bb_main.3 
.bb_main.3:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDI 
SUB CX, CX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RBX 
ADC RSI, -70 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RSI] 
INC EBX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
JNLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
BSWAP RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RBX] 
SBB ECX, -50 
CMC  
STC  
ADC SI, 61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
