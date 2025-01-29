.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
CMOVP EBX, ECX 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDX] 
CMP RAX, -104875906 
SBB EAX, -1485444879 
AND RSI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -4 
CMOVNB CX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
DEC CX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 21 # instrumentation
CMOVP BX, CX 
ADD DL, CL 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RCX] 
ADD RAX, -104911450 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
SAHF  
SBB EBX, -27 
STC  
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
MOVZX EBX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RBX] 
CMP SIL, 14 
SBB RDX, 26 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
IMUL ECX 
LEA RBX, qword ptr [RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
