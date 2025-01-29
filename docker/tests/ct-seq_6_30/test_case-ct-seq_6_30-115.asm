.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDX] 
CMOVZ AX, CX 
JMP .bb_main.1 
.bb_main.1:
DEC RDX 
SUB RAX, 1241065550 
MOVSX EDX, BX 
SUB SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RAX] 
ADD RAX, -135208886 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RSI] 
CMOVNL RDX, RDX 
MUL BL 
SUB AL, DIL 
ADD DX, DX 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], 21 
CMOVBE EAX, EDI 
SUB AL, 114 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
SBB BX, -74 
NEG RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -82 
NEG AL 
SUB DL, BL 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
MUL EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -87 
JMP .bb_main.5 
.bb_main.5:
CMP DL, DL 
SBB RCX, -90 
CMOVB EBX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
