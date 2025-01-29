.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 110 # instrumentation
CMOVL EDI, ESI 
CMP SIL, -96 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 105 # instrumentation
CMOVNZ RDX, RAX 
CMOVB EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1635220397 
SUB ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -114 
AND RBX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RBX] 
NEG EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 31 
XCHG RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], -65 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
