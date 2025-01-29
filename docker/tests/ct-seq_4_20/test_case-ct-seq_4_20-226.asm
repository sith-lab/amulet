.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -67 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 60 
ADD BX, SI 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -126 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 97 
SUB DL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
JMP .bb_main.2 
.bb_main.2:
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DIL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
