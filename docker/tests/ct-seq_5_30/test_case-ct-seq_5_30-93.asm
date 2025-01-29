.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -87 # instrumentation
SBB SIL, SIL 
CMP RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -119 
CMOVBE ECX, EDI 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RSI] 
SBB EAX, -1708738997 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
XCHG BL, BL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
CMP RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDX] 
ADD EAX, 1131032036 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
NEG DL 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RCX] 
LEA DX, qword ptr [RAX + RDI] 
SBB AX, -83 
CMOVZ DX, DI 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 75 # instrumentation
ADC AX, CX 
CMOVNZ RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RSI 
IMUL ESI 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
ADC EAX, -950353731 
MUL SIL 
MOV RDX, -1049563284950689857 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
