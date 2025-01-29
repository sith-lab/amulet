.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -37 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EDI 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RAX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
MOVSX EBX, DL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 85 
SBB AX, 28068 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -76 
SBB AL, 49 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
SBB RAX, 227147295 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
