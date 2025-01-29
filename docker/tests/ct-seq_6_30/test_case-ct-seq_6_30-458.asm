.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -18 # instrumentation
XCHG BX, AX 
SBB ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
CMP SIL, -56 
CMOVNLE SI, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
AND RBX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RBX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 27 # instrumentation
ADC AX, 11689 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -98 
CMOVBE RAX, RSI 
CMOVNZ RAX, RSI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RSI] 
CMOVNLE ESI, ECX 
CMOVZ EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EBX 
MOVSX DX, SIL 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
MOVZX RDX, AL 
MOV AL, 102 
IMUL BX, DX, 25 
ADD DIL, 119 # instrumentation
CMOVL DX, DI 
CMOVB EDX, EDX 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -110 
CMOVO RCX, RAX 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -120 
MOVZX EDX, BL 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
XCHG RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
