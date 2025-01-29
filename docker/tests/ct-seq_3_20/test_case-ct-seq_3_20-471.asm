.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 13 # instrumentation
CMOVNB EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 66 
AND RBX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 109 
NEG EAX 
MOVSX ECX, BX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
SBB SI, -11 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 102 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -86 
CMOVNZ EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
