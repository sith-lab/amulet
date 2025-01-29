.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
CMOVNZ DX, SI 
CMOVP EDI, EDI 
CMOVP DI, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DL 
CMOVZ RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 55 
CMOVNO RDI, RDX 
CMOVS EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RCX] 
SBB RAX, 1256850756 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI], 77 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD SIL, -79 # instrumentation
CMOVZ RCX, RAX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -124 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDX 
SUB RAX, -1773745656 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
CMP AL, -45 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
SUB RSI, 8 
MOVSX RDI, AL 
SBB AX, -18060 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
SBB DIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
