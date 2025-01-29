.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
MOV RCX, RAX 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ECX 
MOVSX DX, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
SBB EAX, EDX 
CMOVO RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 19 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RCX] 
CMOVZ SI, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
CLD  
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
ADD AL, -66 
DEC SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], ESI 
LEA RDX, qword ptr [RDX + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
