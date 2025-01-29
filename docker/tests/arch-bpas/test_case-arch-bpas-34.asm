.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -15 # instrumentation
SETL DL 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
CLC  
SETNBE BL 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
ADD EAX, 84 
AND RBX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDX 
ADC RDX, -126 
NOT RDI 
AND DX, BX 
INC RSI 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -53 
MOV ECX, EDI 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 19 # instrumentation
SETNBE AL 
MOV CL, -15 
IMUL EBX, EAX, -108 
NOT SI 
TEST EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 123 
XOR RSI, 96 
AND RCX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], 127 
SUB SIL, -60 
CMOVNS ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
CMOVZ BX, DX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], DL 
SUB BL, -27 
CMOVNZ AX, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
CMP AL, DL 
CMOVL RCX, RSI 
OR EAX, -723885649 
ADC AL, -113 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX], -56 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -51 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
