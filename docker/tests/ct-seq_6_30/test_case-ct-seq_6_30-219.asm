.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
IMUL DIL 
IMUL RSI 
ADD BL, DL 
CMOVNO EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -122 # instrumentation
CMOVNS DI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
DEC DL 
DEC ESI 
ADC BL, CL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 40 # instrumentation
CMOVP DX, DX 
MUL AL 
ADD CL, AL 
ADD RAX, -1726348957 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
SBB DI, CX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI], 36 
ADD DIL, 125 # instrumentation
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 35 # instrumentation
CMOVZ ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
XCHG EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDI] 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOV CL, -43 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
SUB AL, 79 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
