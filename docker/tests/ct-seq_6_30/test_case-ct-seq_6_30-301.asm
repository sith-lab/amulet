.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RBX 
ADD AX, 29479 
CMOVNLE RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RCX 
JMP .bb_main.1 
.bb_main.1:
NEG AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
CMOVB SI, SI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 54 # instrumentation
CMOVNL RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EBX 
MOVZX EBX, DX 
SUB BL, AL 
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -117 # instrumentation
SBB DX, DI 
CMP EBX, EDI 
IMUL EDX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
MOV ESI, EAX 
IMUL ECX, EBX, 14 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
CMOVNS EAX, EDX 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
CMOVBE RCX, RAX 
CMOVNLE RDI, RBX 
SUB EDI, EDI 
BSWAP EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
